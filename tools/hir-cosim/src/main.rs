use clap::Parser;
use pyo3::prelude::*;
use pyo3::types::*;
use serde_derive::Deserialize;
use std::fs;
use toml;

fn default_config() -> String {
    return "test.toml".to_owned();
}

/// Simple program to greet a person
#[derive(Parser, Debug)]
#[command(about, long_about = None)]
struct Args {
    /// test config file (toml).
    #[arg(default_value_t = default_config())]
    config: String,

    /// Number of times to greet
    #[arg(short, long, default_value_t = false)]
    verbose: bool,
}

#[derive(Deserialize, Debug)]
struct Config {
    dependencies: Dependencies,
    test: Vec<Test>,
}

#[derive(Deserialize, Debug)]
struct Test {
    top: String,
    test_file: String,
    hir_file: String,
}

#[derive(Deserialize, Debug)]
struct Dependencies {
    circt_opt: String,
    mlir_opt: String,
    verilator: String,
    cxx: String,
}

fn main() {
    let args = Args::parse();
    let config_str = fs::read_to_string(&args.config).unwrap();
    let config: Config = toml::from_str(&config_str).unwrap();
    let top = &config.test[0].top;
    let test_name = "test_".to_owned() + top;
    let test_code = fs::read_to_string(&config.test[0].test_file).unwrap();

    println!("tests: {:#?}", config);

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
