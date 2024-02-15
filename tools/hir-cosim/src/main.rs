use clap::Parser;
use std::fs;
use std::path::PathBuf;
use toml;

pub mod config;
pub mod hls;
pub mod test_runner;
pub mod verilator;

use crate::config::Config;
use crate::test_runner::run_test;

fn default_config() -> String {
    return "test.toml".to_owned();
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
    println!("{:#?}", config);

    let hls = hls::Compiler {
        circt_opt: config.dependencies.circt_opt.into(),
        mlir_opt: config.dependencies.mlir_opt.into(),
    };
    let verilator = verilator::Compiler {
        verilator: config.dependencies.verilator.into(),
        cxx: config.dependencies.cxx.into(),
    };
    let build_dir = "cosim_build".to_owned();
    for test in &config.test {
        hls.compile(test, &build_dir);

        verilator.compile(test, &build_dir);
        run_test(test);
    }
}
