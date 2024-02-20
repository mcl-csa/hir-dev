use crate::cosim_info::{Arg, Function, SVArg, SVMemrefArg, SVMemrefPort};
use libc;
use libloading::{Library, Symbol};
mod value;
use std::iter::zip;

pub use value::Value;

type UnsafeVoidPtr = *mut libc::c_void;
type GetType<'lib> = Symbol<'lib, extern "C" fn(UnsafeVoidPtr) -> u64>;
type SetType<'lib> = Symbol<'lib, extern "C" fn(UnsafeVoidPtr, u64)>;

pub struct SimpleDUTArg<'lib> {
    pub name: String,
    set: SetType<'lib>,
}

impl<'lib> SimpleDUTArg<'lib> {
    fn update(&self, p: UnsafeVoidPtr, value: &Value) {
        (self.set)(p, value.get());
    }
}

struct MemReadOp {
    time: u32,
    addr: u32,
}
struct MemWriteOp {
    time: u32,
    addr: u32,
    value: u64,
}

enum MemOp {
    Rd(MemReadOp),
    Wr(MemWriteOp),
}

struct PortOfMemDUTArg<'lib> {
    operations: Vec<MemOp>,
    rd_latency: u32,
    wr_latency: u32,
    get_addr_en: Option<GetType<'lib>>,
    get_addr_data: Option<GetType<'lib>>,
    get_rd_en: Option<GetType<'lib>>,
    set_rd_data: Option<SetType<'lib>>,
    get_wr_en: Option<GetType<'lib>>,
    get_wr_data: Option<GetType<'lib>>,
}

pub struct MemDUTArg<'lib> {
    pub name: String,
    ports: Vec<PortOfMemDUTArg<'lib>>,
}

impl<'lib> MemDUTArg<'lib> {
    fn after_posedge(&mut self, p: UnsafeVoidPtr, value: &mut Value, time: u32) {
        for port in &mut self.ports {
            after_posedge(p, port, value, time);
        }
    }
}

pub enum DUTArg<'lib> {
    Simple(SimpleDUTArg<'lib>),
    Mem(MemDUTArg<'lib>),
}

pub struct DUT {
    lib: Library,
    func: Function,
}

impl DUT {
    pub fn new(dyn_lib: &str, func: Function) -> DUT {
        DUT {
            lib: unsafe { Library::new(dyn_lib).unwrap() },
            func,
        }
    }

    pub fn run(&self, values: &mut Vec<Value>, ncycles: u32) {
        let (vtop, trace) = init(&self.lib);
        let tick = unsafe {
            self.lib
                .get::<extern "C" fn(UnsafeVoidPtr, UnsafeVoidPtr, u32)>(b"tick")
                .unwrap()
        };
        let set_clk = unsafe {
            self.lib
                .get::<extern "C" fn(UnsafeVoidPtr, u32)>(b"set_clk")
                .unwrap()
        };
        let set_rst = unsafe {
            self.lib
                .get::<extern "C" fn(UnsafeVoidPtr, u32)>(b"set_rst")
                .unwrap()
        };
        let set_t = unsafe {
            self.lib
                .get::<extern "C" fn(UnsafeVoidPtr, u32)>(b"set_t")
                .unwrap()
        };
        let mut dut_args = self.get_dut_args();

        assert!(dut_args.len() == values.len());
        for (arg, value) in zip(dut_args.iter(), values.iter_mut()) {
            match arg {
                DUTArg::Simple(s) => s.update(vtop, &value),
                _ => (),
            }
        }

        for time in 0..2 * ncycles {
            let clk = time % 2;
            let rst = if 1 <= time && time <= 2 { 1 } else { 0 };
            let t = if 15 <= time && time <= 16 { 1 } else { 0 };

            set_clk(vtop, clk);
            set_rst(vtop, rst);
            set_t(vtop, t);

            tick(vtop, trace, time);

            //If positive edge (clk=1), update the memory buses.
            if clk == 1 {
                for (arg, value) in zip(dut_args.iter_mut(), values.iter_mut()) {
                    match arg {
                        DUTArg::Simple(_) => (),
                        DUTArg::Mem(m) => m.after_posedge(vtop, value, time),
                    }
                }
            }
        }

        deinit(&self.lib, vtop, trace);
    }

    pub fn get_args(&self) -> &Vec<Arg> {
        &self.func.args
    }

    pub fn get_dut_args(&self) -> Vec<DUTArg> {
        self.func
            .get_sv_args()
            .iter()
            .map(|sv_arg| match sv_arg {
                SVArg::Int(v) => DUTArg::Simple(SimpleDUTArg {
                    name: v.name.clone(),
                    set: setter(&self.lib, &v.name),
                }),
                SVArg::Float(v) => DUTArg::Simple(SimpleDUTArg {
                    name: v.name.clone(),
                    set: setter(&self.lib, &v.name),
                }),
                SVArg::Memref(v) => DUTArg::Mem(build_mem_arg(&self.lib, &v)),
            })
            .collect()
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

fn build_mem_arg<'lib>(lib: &'lib Library, sv_mem: &SVMemrefArg) -> MemDUTArg<'lib> {
    MemDUTArg {
        name: sv_mem.name.clone(),
        ports: sv_mem
            .ports
            .iter()
            .map(|sv_port| build_mem_port(lib, sv_port))
            .collect(), //FIXME: map ports correctly.
    }
}

fn build_mem_port<'lib>(lib: &'lib Library, sv_port: &SVMemrefPort) -> PortOfMemDUTArg<'lib> {}
fn after_posedge(p: UnsafeVoidPtr, port: &mut PortOfMemDUTArg, arr: &mut Value, time: u32) {
    arr.set_mem(0, 23)
}

fn init(lib: &Library) -> (UnsafeVoidPtr, UnsafeVoidPtr) {
    let alloc_vtop = unsafe {
        lib.get::<Symbol<extern "C" fn() -> UnsafeVoidPtr>>(b"alloc_vtop")
            .unwrap()
    };
    let alloc_trace = unsafe {
        lib.get::<Symbol<extern "C" fn(UnsafeVoidPtr) -> UnsafeVoidPtr>>(b"alloc_trace")
            .unwrap()
    };

    let vtop = alloc_vtop();
    let trace = alloc_trace(vtop);
    (vtop, trace)
}

fn deinit(lib: &Library, vtop: UnsafeVoidPtr, trace: UnsafeVoidPtr) {
    let dealloc_vtop = unsafe {
        lib.get::<Symbol<extern "C" fn(UnsafeVoidPtr)>>(b"dealloc_vtop")
            .unwrap()
    };
    let dealloc_trace = unsafe {
        lib.get::<Symbol<extern "C" fn(UnsafeVoidPtr)>>(b"dealloc_trace")
            .unwrap()
    };
    dealloc_trace(trace);
    dealloc_vtop(vtop);
}
