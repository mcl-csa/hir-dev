use crate::cosim;
use crate::verilator::dut::{GetType, SetType, UnsafeVoidPtr, Value};
use libloading::Library;
use std::iter::zip;

pub enum DUTArg<'lib> {
    Simple(SimpleDUTArg<'lib>),
    Mem(MemDUTArg<'lib>),
}

impl<'lib> DUTArg<'lib> {
    pub fn new(lib: &'lib Library, arg_info: &cosim::ArgInfo) -> Self {
        match arg_info {
            cosim::ArgInfo::Int(v) => DUTArg::Simple(SimpleDUTArg {
                name: v.name.clone(),
                set: setter(lib, &v.name),
            }),
            cosim::ArgInfo::Float(v) => DUTArg::Simple(SimpleDUTArg {
                name: v.name.clone(),
                set: setter(lib, &v.name),
            }),
            cosim::ArgInfo::Memref(v) => DUTArg::Mem(MemDUTArg::new(lib, &v)),
        }
    }
}

pub struct SimpleDUTArg<'lib> {
    pub name: String,
    pub set: SetType<'lib>,
}

impl<'lib> SimpleDUTArg<'lib> {
    pub fn update(&self, p: UnsafeVoidPtr, value: &Value) {
        (self.set)(p, value.get());
    }
}

enum MemOp<'lib> {
    ReadOp(/*time*/ u32, SetType<'lib>, /*addr*/ usize),
    WriteOp(/*time*/ u32, /*data*/ u64, /*addr*/ usize),
}
pub struct MemDUTArg<'lib> {
    pub name: String,
    pub ports: Vec<PortOfMemDUTArg<'lib>>,
    pending_ops: Vec<MemOp<'lib>>,

    ///Time measured in number of cycles.
    now: u32,
}

impl<'lib> MemDUTArg<'lib> {
    fn new(lib: &'lib Library, mem_info: &cosim::MemrefArgInfo) -> Self {
        MemDUTArg {
            name: mem_info.name.clone(),
            ports: mem_info
                .ports
                .iter()
                .map(|port_info| PortOfMemDUTArg::new(lib, port_info))
                .collect(),
            pending_ops: Vec::new(),
            now: 0,
        }
    }

    pub fn after_posedge(
        &mut self,
        p: UnsafeVoidPtr,
        value: &mut Value,
        info: &cosim::MemrefArgInfo,
    ) {
        self.now += 1;
        self.pending_ops.extend(
            zip(self.ports.iter_mut(), info.ports.iter())
                .map(|(port, port_info)| after_posedge(p, port, port_info, self.now))
                .flatten(),
        );
        self.pending_ops = self
            .pending_ops
            .drain(..)
            .filter_map(|op| process_read(op, p, value, self.now)) //Read-before-Write
            .collect::<Vec<MemOp>>()
            .drain(..)
            .filter_map(|op| process_write(op, value, self.now))
            .collect();
    }
}

pub struct PortOfMemDUTArg<'lib> {
    pub get_addr_en: GetType<'lib>,
    pub get_addr_data: GetType<'lib>,
    pub get_rd_en: Option<GetType<'lib>>,
    pub set_rd_data: Option<SetType<'lib>>,
    pub get_wr_en: Option<GetType<'lib>>,
    pub get_wr_data: Option<GetType<'lib>>,
}

impl<'lib> PortOfMemDUTArg<'lib> {
    fn new(lib: &'lib Library, port_info: &cosim::Port) -> Self {
        PortOfMemDUTArg {
            get_addr_en: getter(lib, &format!("{}_addr_en", port_info.name)),
            get_addr_data: getter(lib, &format!("{}_addr_data", port_info.name)),
            get_rd_en: match port_info.is_readable() {
                true => Some(getter(lib, &format!("{}_rd_en", port_info.name))),
                false => None,
            },
            set_rd_data: match port_info.is_readable() {
                true => Some(setter(lib, &format!("{}_rd_data", port_info.name))),
                false => None,
            },
            get_wr_en: match port_info.is_writable() {
                true => Some(getter(lib, &format!("{}_wr_en", port_info.name))),
                false => None,
            },
            get_wr_data: match port_info.is_writable() {
                true => Some(getter(lib, &format!("{}_wr_data", port_info.name))),
                false => None,
            },
        }
    }
}

fn getter<'lib>(lib: &'lib Library, vname: &str) -> GetType<'lib> {
    unsafe {
        lib.get::<extern "C" fn(UnsafeVoidPtr) -> u64>(format!("get_{vname}").as_bytes())
            .unwrap()
    }
}

fn setter<'lib>(lib: &'lib Library, vname: &str) -> SetType<'lib> {
    unsafe {
        lib.get::<extern "C" fn(UnsafeVoidPtr, u64)>(format!("set_{vname}").as_bytes())
            .unwrap()
    }
}

fn process_read<'lib>(
    op: MemOp<'lib>,
    p: UnsafeVoidPtr,
    value: &Value,
    now: u32,
) -> Option<MemOp<'lib>> {
    match op {
        MemOp::ReadOp(time, set, addr) => {
            if time == now {
                set(p, value.get_mem(addr));
                None
            } else {
                Some(MemOp::ReadOp(time, set, addr))
            }
        }
        _ => Some(op),
    }
}

fn process_write<'lib>(op: MemOp<'lib>, value: &mut Value, now: u32) -> Option<MemOp<'lib>> {
    match op {
        MemOp::WriteOp(time, data, addr) => {
            if time == now {
                value.set_mem(addr, data);
                None
            } else {
                Some(MemOp::WriteOp(time, data, addr))
            }
        }
        _ => Some(op),
    }
}

fn after_posedge<'lib>(
    p: UnsafeVoidPtr,
    port: &mut PortOfMemDUTArg<'lib>,
    info: &cosim::Port,
    time: u32,
) -> Vec<MemOp<'lib>> {
    let mut mem_ops = Vec::new();
    if (port.get_addr_en)(p) == 1 {
        let addr = usize::try_from((port.get_addr_data)(p)).unwrap();

        if port.get_rd_en.is_some() && (port.get_rd_en.as_ref().unwrap())(p) == 1 {
            mem_ops.push(MemOp::ReadOp(
                time + info.rd_latency.unwrap(),
                port.set_rd_data.clone().unwrap(),
                addr,
            ));
        }

        if port.get_wr_en.is_some() && (port.get_wr_en.as_ref().unwrap())(p) == 1 {
            mem_ops.push(MemOp::WriteOp(
                time + info.wr_latency.unwrap(),
                (port.get_wr_data.as_ref().unwrap())(p),
                addr,
            ));
        }
    }
    mem_ops
}
