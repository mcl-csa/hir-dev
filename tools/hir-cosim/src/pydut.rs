use crate::cosim_info::Arg;
use crate::verilator::dut::Value;
use crate::verilator::dut::DUT;
use numpy::PyReadwriteArrayDyn;
use pyo3::prelude::*;
use pyo3::types::PyTuple;
use std::iter::zip;

type TensorI32<'py> = PyReadwriteArrayDyn<'py, i32>;
type TensorFloat<'py> = PyReadwriteArrayDyn<'py, f32>;

enum PyType<'py> {
    I32(i32),
    F32(f32),
    ArrayOfInt(TensorI32<'py>),
    ArrayOfFloat(TensorFloat<'py>),
}
#[pyclass]
pub struct PyDUT {
    dut: DUT,
    ncycles: u32,
}

impl PyDUT {
    pub fn new(dut: DUT) -> Self {
        Self { dut, ncycles: 0 }
    }
}

#[pymethods]
impl PyDUT {
    pub fn set_sim_duration(&mut self, ncycles: u32) {
        self.ncycles = ncycles;
    }

    ///Called from python testbench to run the dut using verilator.
    #[pyo3(signature = (*py_args))]
    pub fn run(&self, py_args: &PyTuple) {
        assert!(self.ncycles > 0);
        let mut py_args = extract_from_pytuple(py_args);
        let maybe_values = get_arg_values(self.dut.get_args(), &mut py_args);
        let mut values = maybe_values
            .into_iter()
            .enumerate()
            .map(|(i, v)| -> Value {
                match v {
                    Ok(value) => value,
                    Err(_) => panic!("Type mismatch at argument {i}."),
                }
            })
            .collect();
        self.dut.run(&mut values, self.ncycles);
    }
}

fn get_arg_values<'py>(
    formal_args: &Vec<Arg>,
    py_args: &'py mut Vec<PyType>,
) -> Vec<Result<Value<'py>, ()>> {
    assert!(formal_args.len() == py_args.len());
    zip(formal_args, py_args)
        .map(|(sv_arg, py_arg)| match (sv_arg, py_arg) {
            (Arg::Int(_), PyType::I32(v)) => Ok(Value::I32(*v)),
            (Arg::Float(_), PyType::F32(v)) => Ok(Value::F32(*v)),
            (Arg::Memref(_), PyType::ArrayOfInt(v)) => {
                Ok(Value::ArrayOfI32(v.as_slice_mut().unwrap()))
            }
            _ => Err(()),
        })
        .collect()
}

fn extract_from_pytuple<'py>(args: &'py PyTuple) -> Vec<PyType<'py>> {
    args.iter()
        .enumerate()
        .map(|(i, arg)| {
            if let Ok(v) = arg.extract::<i32>() {
                PyType::I32(v)
            } else if let Ok(v) = arg.extract::<f32>() {
                PyType::F32(v)
            } else if let Ok(v) = arg.extract::<TensorI32<'py>>() {
                PyType::ArrayOfInt(v)
            } else if let Ok(v) = arg.extract::<TensorFloat<'py>>() {
                PyType::ArrayOfFloat(v)
            } else {
                panic!("Unknown type of argument {i}.\nArgument value = {}", arg);
            }
        })
        .collect()
}
