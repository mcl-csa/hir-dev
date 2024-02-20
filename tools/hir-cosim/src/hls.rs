use crate::config::Test;
use std::fs;
use std::path::PathBuf;
use std::process::Command;
pub struct Compiler {
    pub circt_opt: PathBuf,
    pub mlir_opt: PathBuf,
}

impl Compiler {
    pub fn compile(&self, test: &Test, build_dir: &String) {
        // circt-opt -gen-cosim-files="dir=./build/$1 entry=$1" $1.mlir
        let out = Command::new(&self.circt_opt)
            .arg(format!(
                r#"-gen-cosim-files=dir={build_dir} entry={top}"#,
                top = test.top
            ))
            .arg(&test.hir_file)
            .output()
            .unwrap();
        if !out.status.success() {
            println!("Error: {:?}", out);
        }

        // circt-opt --affine-to-hir --hir-opt --hir-simplify --hir-to-hw --export-split-verilog="dir-name=build/$1" build/$1/verilog-sim.mlir
        let out = Command::new(&self.circt_opt)
            .arg("--affine-to-hir")
            .arg("--hir-opt")
            .arg("--hir-simplify")
            .arg("--hir-to-hw")
            .arg(format!(r#"--export-split-verilog=dir-name={build_dir} "#))
            .arg(build_dir.to_owned() + "/verilog-sim.mlir")
            .output()
            .unwrap();
        if !out.status.success() {
            println!("Error: {:?}", out);
        }
        // mlir-opt --lower-affine --convert-scf-to-cf --finalize-memref-to-llvm --convert-func-to-llvm='use-bare-ptr-memref-call-conv' --reconcile-unrealized-casts ./build/$1/cpu-sim.mlir
        let out = Command::new(&self.mlir_opt)
            .arg("--lower-affine")
            .arg("--convert-scf-to-cf")
            .arg("--finalize-memref-to-llvm")
            .arg("--convert-func-to-llvm=use-bare-ptr-memref-call-conv")
            .arg("--reconcile-unrealized-casts")
            .arg(build_dir.to_owned() + "/cpu-sim.mlir")
            .output()
            .unwrap();
        if !out.status.success() {
            println!("Error: {:?}", out);
        }
        fs::write(build_dir.to_owned() + "/cpu-llvm.mlir", out.stdout).unwrap();
    }
}
