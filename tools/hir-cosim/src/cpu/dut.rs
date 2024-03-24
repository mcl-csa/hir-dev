use crate::cosim;
use crate::cpu::vararg::CArg;
use crate::value::{encode_i32, Value};
use indexmap::IndexMap;
use libloading::Library;
use std::path::PathBuf;
use std::slice;

pub struct DUT {
    lib: Library,
    pub func: cosim::Function,
}

impl DUT {
    pub fn new(lib_path: &str, func: cosim::Function) -> DUT {
        assert!(PathBuf::from(lib_path).exists());
        DUT {
            lib: unsafe { Library::new(lib_path).unwrap() },
            func,
        }
    }

    pub fn run(&mut self, values: &mut Vec<Value>) -> IndexMap<String, Vec<u64>> {
        let cpu_wrapper = unsafe {
            self.lib
                .get::<extern "C" fn(*mut CArg)>(b"cpu_wrapper")
                .unwrap()
        };
        let mut cargs = get_cargs(values);
        cpu_wrapper(cargs.as_mut_ptr());
        let get_num_probes = unsafe {
            self.lib
                .get::<extern "C" fn() -> i32>(b"get_num_probes")
                .unwrap()
        };
        let get_probe_values = unsafe {
            self.lib
                .get::<extern "C" fn() -> *const i32>(b"get_probe_values")
                .unwrap()
        };
        let get_probe_ids = unsafe {
            self.lib
                .get::<extern "C" fn() -> *const i32>(b"get_probe_ids")
                .unwrap()
        };
        let num_probes: usize = usize::try_from(get_num_probes()).unwrap();
        let probe_values = get_probe_values();
        let probe_ids = get_probe_ids();
        let probe_values = unsafe { slice::from_raw_parts(probe_values, num_probes) };
        let probe_ids = unsafe { slice::from_raw_parts(probe_ids, num_probes) };
        let mut probe_trace = IndexMap::<String, Vec<u64>>::from_iter(
            self.func
                .probes
                .iter()
                .map(|probe_info| (probe_info.name.clone(), Vec::<u64>::new())),
        );
        let probe_map = IndexMap::<u32, String>::from_iter(
            self.func
                .probes
                .iter()
                .map(|probe_info| (probe_info.id, probe_info.name.clone())),
        );
        probe_ids
            .iter()
            .zip(probe_values.iter())
            .for_each(|(id, value)| {
                let id = u32::try_from(*id).unwrap();
                probe_trace
                    .get_mut(probe_map.get(&id).unwrap())
                    .unwrap()
                    .push(encode_i32(*value))
            });
        probe_trace
    }
}

fn get_cargs<'arg>(args: &'arg mut Vec<Value>) -> Vec<CArg<'arg>> {
    args.iter_mut().map(|arg| CArg::new(arg)).collect()
}
