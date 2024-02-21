use clap::Parser;
use std::fs;
use std::path::PathBuf;
use toml;

pub mod cosim;
mod hls;
mod pydut;
pub mod test;
mod test_runner;
mod value;
mod verilator;

use crate::pydut::PyDUT;
use crate::test::Config;
use crate::test_runner::run_test;

fn default_config() -> String {
    "test.toml".to_owned()
}

#[derive(Parser, Debug)]
#[command(about, long_about = None)]
pub struct Args {
    /// test config file (toml).
    #[arg(default_value_t = default_config())]
    config: String,

    /// Number of times to greet
    #[arg(short, long, default_value_t = false)]
    verbose: bool,
}
fn main() {
    let args = Args::parse();
    let config_str = fs::read_to_string(&args.config).unwrap();
    let mut config: Config = toml::from_str(&config_str).unwrap();
    let config_path = PathBuf::from(args.config).canonicalize().unwrap();
    config.prepend_path(config_path.parent().unwrap());

    let hls = hls::Compiler {
        circt_opt: config.dependencies.circt_opt.into(),
        mlir_opt: config.dependencies.mlir_opt.into(),
    };

    let build_dir = "cosim_build".to_owned();

    _ = std::fs::remove_dir_all(&build_dir);

    for test in &config.test {
        let verilator = verilator::Compiler {
            verilator: config.dependencies.verilator.clone().into(),
            cxx: config.dependencies.cxx.clone().into(),
        };
        hls.compile(test, &build_dir);
        let dut = verilator.compile(&test, &build_dir);
        let py_dut = PyDUT::new(dut);
        run_test(test, py_dut);
    }
}
