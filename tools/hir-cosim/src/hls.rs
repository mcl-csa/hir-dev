use crate::test::Test;
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
        let mut cmd = Command::new(&self.circt_opt);
        cmd.arg(format!(
            r#"-gen-cosim-files=dir={build_dir} entry={top}"#,
            top = test.top
        ))
        .arg(&test.hir_file);

        let out = cmd.output().unwrap();
        if !out.status.success() {
            panic!("cmd:{:#?}\n\n{}", cmd, String::from_utf8_lossy(&out.stderr));
        }

        // circt-opt --affine-to-hir  build/verilog-sim.mlir >build/hir.mlir
        let mut cmd = Command::new(&self.circt_opt);
        cmd.arg("--affine-to-hir")
            .arg("--sccp")
            .arg("--cse")
            .arg("--canonicalize")
        .arg(build_dir.to_owned() + "/verilog-sim.mlir");

        let out = cmd.output().unwrap();
        if !out.status.success() {
            panic!("cmd:{:#?}\n\n{}", cmd, String::from_utf8_lossy(&out.stderr));
        }

        let hir_file = build_dir.to_owned() + "/hir.mlir";
        fs::write(&hir_file, out.stdout).unwrap();

        // circt-opt --affine-to-hir --hir-opt --hir-simplify --hir-to-hw --export-split-verilog="dir-name=build/$1" build/$1/verilog-sim.mlir
        let mut cmd = Command::new(&self.circt_opt);
        cmd.arg("--affine-to-hir")
            .arg("--hir-opt")
            .arg("--hir-simplify")
            .arg("--hir-to-hw")
            .arg(format!(r#"--export-split-verilog=dir-name={build_dir} "#))
            .arg(build_dir.to_owned() + "/hir.mlir");

        let out = cmd.output().unwrap();
        if !out.status.success() {
            panic!("cmd:{:#?}\n\n{}", cmd, String::from_utf8_lossy(&out.stderr));
        }
    }
}
