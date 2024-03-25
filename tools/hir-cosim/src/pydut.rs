use crate::cosim::ArgInfo;
use crate::cosim::Element;
use crate::cosim::Function;
use crate::cosim::MemrefArgInfo;
use crate::cpu;
use crate::value::Value;
use crate::verilator;
use comfy_table::presets::UTF8_FULL;
use comfy_table::*;
use indexmap::IndexMap;
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
    verilog_dut: verilator::DUT,
    cpu_dut: cpu::DUT,
    ncycles: u32,
}

impl PyDUT {
    pub fn new(verilog_dut: verilator::DUT, cpu_dut: cpu::DUT) -> Self {
        Self {
            verilog_dut,
            cpu_dut,
            ncycles: 0,
        }
    }
}

fn print_probe_diff(sw: &[Result<String, String>], hw: &[Result<String, String>]) {
    let mut table = Table::new();
    table
        .load_preset(UTF8_FULL)
        .set_content_arrangement(ContentArrangement::Dynamic)
        //.set_width(80)
        .set_header(vec![
            Cell::new("Software").add_attribute(Attribute::Bold),
            Cell::new("Hardware").add_attribute(Attribute::Bold),
        ]);
    sw.iter().zip(hw.iter()).for_each(|(sval, hval)| {
        let sw_cell = match sval {
            Ok(s) => Cell::new(s)
                .bg(Color::Rgb { r: 0, g: 128, b: 0 })
                .add_attribute(Attribute::Bold),
            Err(s) => Cell::new(s)
                .bg(Color::DarkGrey)
                .add_attribute(Attribute::Bold),
        };
        let hw_cell = match hval {
            Ok(s) => Cell::new(s)
                .bg(Color::Rgb { r: 128, g: 0, b: 0 })
                .add_attribute(Attribute::Bold),
            Err(s) => Cell::new(s)
                .bg(Color::DarkGrey)
                .add_attribute(Attribute::Bold),
        };
        table.add_row(vec![sw_cell, hw_cell]);
    });
    println!("{table}");
}

fn probe_str(v: u64, typ: &str) -> Result<String, String> {
    if typ == "float" {
        match v.try_into() {
            Ok(v) => Ok(format!("{}", f32::from_bits(v))),
            Err(_) => Err(format!("{v:#b}")),
        }
    } else {
        Ok(format!("{}", v))
    }
}
fn compare_probes(hw: IndexMap<String, Vec<u64>>, sw: IndexMap<String, Vec<u64>>, func: &Function) {
    func.probes.iter().for_each(|probe| {
        let hw_value = hw.get(&probe.name).unwrap();
        let sw_value = sw.get(&probe.name).unwrap();
        if hw_value != sw_value {
            let hw_value: Vec<Result<String, String>> = hw_value
                .iter()
                .take(8)
                .map(|v| probe_str(*v, &probe.typ))
                .collect();
            let sw_value: Vec<Result<String, String>> = sw_value
                .iter()
                .take(8)
                .map(|v| probe_str(*v, &probe.typ))
                .collect();

            println!("{}:{} Mismatched", probe.name, probe.typ);
            print_probe_diff(&sw_value, &hw_value)
        } else {
            println!("{}:{} Matching", probe.name, probe.typ);
        }
    });
}

#[pymethods]
impl PyDUT {
    pub fn set_sim_duration(&mut self, ncycles: u32) {
        self.ncycles = ncycles;
    }

    ///Called from python testbench to run the dut using verilator.
    #[pyo3(signature = (*py_args))]
    pub fn run(&mut self, py_args: &PyTuple) -> PyResult<()> {
        assert!(self.ncycles > 0);
        let mut py_args = extract_from_pytuple(py_args, self.verilog_dut.get_arg_infos())?;
        let mut values = get_arg_values(&mut py_args);
        let hw_probes = self.verilog_dut.run(&mut values, self.ncycles);
        let sw_probes = self.cpu_dut.run(&mut values);
        compare_probes(hw_probes, sw_probes, &self.cpu_dut.func);
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
