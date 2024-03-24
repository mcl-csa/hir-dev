use crate::cosim;

use crate::test::Test;
use std::path::PathBuf;
use std::process::Command;
use std::{env, fs};

mod codegen;
pub mod dut;
mod vararg;

pub use dut::DUT;

pub struct Compiler {
    pub mlir_opt: PathBuf,
    pub mlir_translate: PathBuf,
    pub cxx: String,
    pub llc: String,
}

impl Compiler {
    pub fn compile(&self, test: &Test, build_dir: &String) -> DUT {
        //This is a useful link for lowering to llvm dialect.
        //link: https://discourse.llvm.org/t/how-to-call-mlir-function-by-c/73126/5

        // mlir-opt --lower-affine --convert-scf-to-cf --finalize-memref-to-llvm --convert-func-to-llvm='use-bare-ptr-memref-call-conv' --reconcile-unrealized-casts ./build/$1/cpu-sim.mlir
        let mut cmd = Command::new(&self.mlir_opt);
        cmd.arg("--lower-affine")
            .arg("--convert-scf-to-cf")
            .arg("--finalize-memref-to-llvm")
            .arg("--convert-func-to-llvm=use-bare-ptr-memref-call-conv")
            .arg("--reconcile-unrealized-casts")
            .arg(build_dir.to_owned() + "/cpu-sim.mlir");
        let out = cmd.output().unwrap();
        if !out.status.success() {
            panic!("cmd:{:#?}\n\n{}", cmd, String::from_utf8_lossy(&out.stderr));
        }
        let cpu_file = build_dir.to_owned() + "/cpu-llvm.mlir";
        fs::write(&cpu_file, out.stdout).unwrap();

        // mlir-translate --lower-affine --convert-scf-to-cf --finalize-memref-to-llvm --convert-func-to-llvm='use-bare-ptr-memref-call-conv' --reconcile-unrealized-casts ./build/$1/cpu-sim.mlir
        let mut cmd = Command::new(&self.mlir_translate);
        cmd.arg("--mlir-to-llvmir")
            .arg(build_dir.to_owned() + "/cpu-llvm.mlir");
        let out = cmd.output().unwrap();
        if !out.status.success() {
            panic!("cmd:{:#?}\n\n{}", cmd, String::from_utf8_lossy(&out.stderr));
        }
        let ll_file = build_dir.to_owned() + "/cpu.ll";
        fs::write(&ll_file, out.stdout).unwrap();

        //llc -filetype=obj cpu.ll -o cpu.o
        let mut cmd = Command::new(&self.llc);
        cmd.arg("-filetype=obj");
        cmd.arg(build_dir.to_owned() + "/cpu.ll");
        cmd.arg("-o");
        cmd.arg(build_dir.to_owned() + "/cpu.o");

        let out = cmd.output().unwrap();
        if !out.status.success() {
            panic!("cmd:{:#?}\n\n{}", cmd, String::from_utf8_lossy(&out.stderr));
        }

        let info = cosim::load(&(build_dir.to_owned() + "/cosim.json"));
        let top_func = info.iter().find(|f| f.name == test.top).unwrap();
        let cpu_wrapper = build_dir.to_owned() + "/cpu_wrapper.cpp";
        codegen::generate_cpu_wrapper(&cpu_wrapper, top_func);

        let lib_cpp: Vec<&String> = test
            .includes
            .iter()
            .filter(|file| file.ends_with(".cpp"))
            .collect();

        //clang++  -fPIC --shared cpu.o arith.cpp cpu_wrapper.cpp -o cpu.so
        let mut cmd = Command::new(&self.cxx);
        cmd.arg("-fPIC");
        cmd.arg("--shared");
        cmd.arg(build_dir.to_owned() + "/cpu.o");
        for file in lib_cpp {
            cmd.arg(file);
        }
        cmd.arg(&cpu_wrapper);
        cmd.arg("-o");
        let lib_name = if env::consts::OS == "linux" {
            build_dir.to_owned() + "/cpu_dut.so"
        } else if env::consts::OS == "macos" {
            build_dir.to_owned() + "/cpu_dut.dylib"
        } else if env::consts::OS == "windows" {
            build_dir.to_owned() + "/cpu_dut.dll"
        } else {
            panic!("unknown OS.");
        };
        cmd.arg(&lib_name);

        let out = cmd.output().unwrap();
        if !out.status.success() {
            panic!("cmd:{:#?}\n\n{}", cmd, String::from_utf8_lossy(&out.stderr));
        }
        DUT::new(&lib_name, top_func.clone())
    }
}
