use crate::cosim::ArgInfo;
use crate::cosim::Element;
use crate::cosim::MemrefArgInfo;
use crate::verilator::dut::Value;
use crate::verilator::dut::DUT;
use numpy::PyReadwriteArrayDyn;
use ordinal::Ordinal;
use pyo3::exceptions::PyTypeError;
use pyo3::prelude::*;
use pyo3::types::PyTuple;
use std::iter::zip;

type TensorI32<'py> = PyReadwriteArrayDyn<'py, i32>;
type TensorF32<'py> = PyReadwriteArrayDyn<'py, f32>;

enum PyType<'py> {
    I32(i32),
    F32(f32),
    ArrayOfInt(TensorI32<'py>),
    ArrayOfFloat(TensorF32<'py>),
}

impl<'py> PyType<'py> {
    fn shape(&self) -> &[usize] {
        match self {
            Self::ArrayOfInt(arr) => arr.shape(),
            Self::ArrayOfFloat(arr) => arr.shape(),
            _ => unreachable!(),
        }
    }
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
    pub fn run(&self, py_args: &PyTuple) -> PyResult<()> {
        assert!(self.ncycles > 0);
        let mut py_args = extract_from_pytuple(py_args, self.dut.get_arg_infos())?;
        let mut values = get_arg_values(&mut py_args);
        let hw_probe_traces = self.dut.run(&mut values, self.ncycles);
        dbg!(hw_probe_traces);
        Ok(())
    }
}

fn get_arg_values<'py>(py_args: &'py mut Vec<PyType>) -> Vec<Value<'py>> {
    py_args
        .iter_mut()
        .map(|py_arg| match py_arg {
            PyType::I32(v) => Value::I32(*v),
            PyType::F32(v) => Value::F32(*v),
            PyType::ArrayOfInt(v) => Value::ArrayOfI32(v.as_slice_mut().unwrap()),
            PyType::ArrayOfFloat(v) => Value::ArrayOfF32(v.as_slice_mut().unwrap()),
        })
        .collect()
}

fn extract_from_pytuple<'py>(
    args: &'py PyTuple,
    formal_args: &Vec<ArgInfo>,
) -> PyResult<Vec<PyType<'py>>> {
    if args.len() != formal_args.len() {
        return Err(PyErr::new::<PyTypeError, _>(format!(
            "Wrong number of arguments. Expected {}, found {}",
            formal_args.len(),
            args.len(),
        )));
    }

    zip(args, formal_args)
        .map(
            |(arg, formal_arg)| match formal_arg {
                ArgInfo::Int(_) => (
                    formal_arg.get_name(),
                    arg.extract::<i32>()
                        .map_or(Err("Expected integer".to_owned()), |v| Ok(PyType::I32(v))),
                ),
                ArgInfo::Float(_) => (
                    formal_arg.get_name(),
                    arg.extract::<f32>()
                        .map_or(Err("Expected float".to_owned()), |v| Ok(PyType::F32(v))),
                ),
                ArgInfo::Memref(m) => (formal_arg.get_name(), extract_array(m, arg)),
            }, // arg.extract::<TensorI32<'py>>();
        )
        .enumerate()
        .map(|(i, (name, r))| match r {
            Ok(pytype) => Ok(pytype),
            Err(msg) => Err(PyErr::new::<PyTypeError, _>(format!(
                "In argument `{}` ({} argument):\n{} ",
                name,
                Ordinal(i + 1).to_string(),
                msg
            ))),
        })
        .collect()
}

fn extract_array<'py>(m: &MemrefArgInfo, arg: &'py PyAny) -> Result<PyType<'py>, String> {
    let array = match m.element {
        Element::Int(_) => match arg.extract::<TensorI32<'py>>() {
            Ok(i) => Ok(PyType::ArrayOfInt(i)),
            Err(_) => Err(format!(
                "Wrong element type. Expected int32{:?}.",
                m.shape()
            )),
        },
        Element::Float(_) => match arg.extract::<TensorF32<'py>>() {
            Ok(f) => Ok(PyType::ArrayOfFloat(f)),
            Err(_) => Err(format!(
                "Wrong element type. Expected float32{:?}.",
                m.shape()
            )),
        },
    }?;
    if array.shape() == m.shape() {
        Ok(array)
    } else {
        Err(format!(
            "Shape mismatch. Expected {}{:?}.",
            m.element.get_numpy_type_str(),
            m.shape()
        ))
    }
}
