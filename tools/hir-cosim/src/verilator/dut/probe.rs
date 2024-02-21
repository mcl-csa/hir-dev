use crate::cosim::ProbeInfo;
use crate::verilator::dut::{GetType, UnsafeVoidPtr};
use libloading::Library;

pub struct DUTProbe<'lib> {
    pub name: String,
    get: GetType<'lib>,
    valid: GetType<'lib>,
}

impl<'lib> DUTProbe<'lib> {
    pub fn new(lib: &'lib Library, probe_info: &ProbeInfo) -> Self {
        Self {
            name: probe_info.name.clone(),
            get: getter(lib, &probe_info.name),
            valid: getter(lib, &format!("{}_valid", &probe_info.name)),
        }
    }

    pub fn get_data(&self, p: UnsafeVoidPtr) -> u64 {
        (self.get)(p)
    }
    pub fn is_valid(&self, p: UnsafeVoidPtr) -> bool {
        (self.valid)(p) != 0
    }
}

fn getter<'lib>(lib: &'lib Library, vname: &str) -> GetType<'lib> {
    unsafe {
        lib.get::<extern "C" fn(UnsafeVoidPtr) -> u64>(format!("get_{vname}").as_bytes())
            .unwrap()
    }
}
