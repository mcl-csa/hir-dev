use crate::config::Test;
use crate::PyDUT;
use pyo3::prelude::*;
use pyo3::types::*;
use std::fs;
use std::path::PathBuf;

pub fn run_test(test: &Test, py_dut: PyDUT) {
    let test_name = "test_".to_owned() + &test.top;
    let test_code = fs::read_to_string(&test.test_file).unwrap();
    let path: PathBuf = test.test_file.clone().into();
    Python::with_gil(|py| {
        let fun: Py<PyAny> = PyModule::from_code(
            py,
            &test_code,
            &test.test_file,
            path.file_name().unwrap().to_str().unwrap(),
        )
        .unwrap()
        .getattr(PyString::new(py, &test_name))
        .unwrap()
        .into();

        let args = PyTuple::new(py, &[py_dut.into_py(py)]);
        _ = fun.call1(py, args).inspect_err(|e| e.print(py));
    })
}
