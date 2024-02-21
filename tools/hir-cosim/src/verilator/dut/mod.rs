use crate::cosim;
use crate::value;
mod arg;
mod probe;
use libloading::{Library, Symbol};
use std::collections::BTreeMap;
use std::iter::zip;
use std::path::PathBuf;
pub use value::Value;

use arg::DUTArg;
use probe::DUTProbe;

type UnsafeVoidPtr = *mut libc::c_void;
type GetType<'lib> = Symbol<'lib, extern "C" fn(UnsafeVoidPtr) -> u64>;
type SetType<'lib> = Symbol<'lib, extern "C" fn(UnsafeVoidPtr, u64)>;
pub struct DUT {
    lib: Library,
    func: cosim::Function,
}

impl DUT {
    pub fn new(lib_path: &str, func: cosim::Function) -> DUT {
        assert!(PathBuf::from(lib_path).exists());
        DUT {
            lib: unsafe { Library::new(lib_path).unwrap() },
            func,
        }
    }

    pub fn run(&self, values: &mut Vec<Value>, ncycles: u32) -> BTreeMap<String, Vec<u64>> {
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

        let mut dut_args: Vec<DUTArg> = self
            .func
            .args
            .iter()
            .map(|arg_info| DUTArg::new(&self.lib, arg_info))
            .collect();

        let dut_probes: Vec<DUTProbe> = self
            .func
            .probes
            .iter()
            .map(|probe_info| DUTProbe::new(&self.lib, probe_info))
            .collect();

        assert!(dut_args.len() == values.len());
        for (arg, value) in zip(dut_args.iter(), values.iter_mut()) {
            match arg {
                DUTArg::Simple(s) => s.update(vtop, &value),
                _ => (),
            }
        }

        let mut probe_trace = BTreeMap::<String, Vec<u64>>::from_iter(
            self.func
                .probes
                .iter()
                .map(|probe_info| (probe_info.name.clone(), Vec::<u64>::new())),
        );

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
                for ((arg, info), value) in zip(
                    zip(dut_args.iter_mut(), self.func.args.iter()),
                    values.iter_mut(),
                ) {
                    match (arg, info) {
                        (DUTArg::Simple(_), _) => (),
                        (DUTArg::Mem(m), cosim::ArgInfo::Memref(mem_info)) => {
                            m.after_posedge(vtop, value, mem_info)
                        }
                        _ => (),
                    }
                }

                dut_probes
                    .iter()
                    .filter(|probe| probe.is_valid(vtop))
                    .for_each(|probe| {
                        probe_trace
                            .get_mut(&probe.name)
                            .unwrap()
                            .push(probe.get_data(vtop));
                    });
            }
        }

        deinit(&self.lib, vtop, trace);
        probe_trace
    }

    pub fn get_args(&self) -> &Vec<cosim::ArgInfo> {
        &self.func.args
    }
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
