use crate::config::Test;
use pyo3::prelude::*;
use pyo3::types::*;
use std::fs;

pub fn run_test(test: &Test) {
    let test_name = "test_".to_owned() + &test.top;
    let test_code = fs::read_to_string(&test.test_file).unwrap();

    Python::with_gil(|py| -> Result<(), ()> {
        let fun: Py<PyAny> = PyModule::from_code(py, &test_code, "", "")
            .unwrap()
            .getattr(PyString::new(py, &test_name))
            .unwrap()
            .into();

        let name = "king";
        let args = PyTuple::new(py, &[name]);
        fun.call1(py, args).unwrap();
        Ok(())
    })
    .unwrap();
}
