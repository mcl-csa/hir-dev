use crate::cosim;
use crate::test::Test;
use std::path::PathBuf;
use std::process::Command;
use std::{env, fs};
mod codegen;
pub mod dut;
pub mod sv;
use dut::DUT;

pub struct Compiler {
    pub verilator: PathBuf,
    pub cxx: PathBuf,
}

impl Compiler {
    pub fn compile(&self, test: &Test, sv_dir: &String) -> DUT {
        let sv_files = glob(sv_dir, ".sv");
        let lib_sv: Vec<&String> = test
            .includes
            .iter()
            .filter(|file| file.ends_with(".sv"))
            .collect();

        let lib_h: Vec<PathBuf> = test
            .includes
            .iter()
            .filter(|file| file.ends_with(".h"))
            .map(|file| -> PathBuf { file.into() })
            .collect();

        //verilator --cc $1/*.sv --top-module $1 --prefix Vtop -Mdir build  --FI arith.h
        let mut cmd = Command::new(&self.verilator);
        cmd.arg("--trace");
        cmd.arg("--cc");
        for file in &sv_files {
            cmd.arg(file);
        }
        for file in lib_sv {
            cmd.arg(file);
        }
        cmd.arg(sv_dir.to_owned() + "/gesummv.vlt");
        cmd.arg("--top-module");
        cmd.arg(&test.top);
        cmd.arg("--prefix");
        cmd.arg("Vtop");
        cmd.arg("-Mdir");
        cmd.arg(sv_dir);
        for file in &lib_h {
            cmd.arg("--FI");
            cmd.arg(file.file_name().unwrap());
        }

        let out = cmd.output().unwrap();
        if !out.status.success() {
            println!("Error: {:?}", out);
        }

        cmd.arg("--xml-only");
        let out = cmd.output().unwrap();
        if !out.status.success() {
            panic!("{}", String::from_utf8_lossy(&out.stderr));
        }

        let verilator_root = get_verilator_root(&self.verilator);
        let lib_cpp: Vec<&String> = test
            .includes
            .iter()
            .filter(|file| file.ends_with(".cpp"))
            .collect();

        let info = cosim::load(&(sv_dir.to_owned() + "/cosim.json"));
        let top_func = info.iter().find(|f| f.name == test.top).unwrap();
        let code = codegen::build_cpp_wrapper(top_func);
        fs::write(sv_dir.to_owned() + "/dut.cpp", code).unwrap();
        let cpp_files = glob(sv_dir, ".cpp");

        //g++ -fPIC --shared *.cpp ../lib/arith.cpp /home/kingshuk/Git_Clones/hir-dev/circt/ext/share/verilator/include/verilated.cpp -I/home/kingshuk/Git_Clones/hir-dev/circt/ext/share/verilator/include  -I../include -o dut.so
        let include_dirs = lib_h.iter().map(|file| file.parent().unwrap());
        let mut cmd = Command::new(&self.cxx);
        cmd.arg("-std=c++11");
        cmd.arg("-fPIC");
        cmd.arg("--shared");
        for file in cpp_files {
            cmd.arg(file);
        }
        for file in lib_cpp {
            cmd.arg(file);
        }
        cmd.arg(verilator_root.clone() + "/include/verilated.cpp");
        cmd.arg(verilator_root.clone() + "/include/verilated_vcd_c.cpp");
        cmd.arg("-I");
        cmd.arg(verilator_root.clone() + "/include");
        cmd.arg("-I");
        cmd.arg(verilator_root + "/include/vltstd");
        for dir in include_dirs {
            cmd.arg("-I");
            cmd.arg(dir);
        }

        cmd.arg("-o");
        if env::consts::OS == "linux" {
            cmd.arg(sv_dir.to_owned() + "/dut.so");
        } else if env::consts::OS == "macos" {
            cmd.arg(sv_dir.to_owned() + "/dut.dylib");
        } else if env::consts::OS == "windows" {
            cmd.arg(sv_dir.to_owned() + "/dut.dll");
        }

        let out = cmd.output().unwrap();
        if !out.status.success() {
            println!("Error: {}", String::from_utf8_lossy(&out.stderr));
        }

        DUT::new(&(sv_dir.to_owned() + "/dut.dylib"), top_func.clone())
    }
}

//---------------------------------------------------------------------------//
//--------------------Private Functions--------------------------------------//
//---------------------------------------------------------------------------//

fn glob(path: &String, file_ext: &str) -> Vec<String> {
    let mut files = Vec::new();
    for entry in fs::read_dir(path).unwrap() {
        let entry = entry.unwrap();
        if !entry.metadata().unwrap().is_file() {
            continue;
        }
        if !entry.file_name().to_str().unwrap().ends_with(file_ext) {
            continue;
        }
        files.push(entry.path().to_str().unwrap().to_owned());
    }
    files
}

fn get_verilator_root(verilator: &PathBuf) -> String {
    let verilator_root_raw = Command::new(verilator)
        .arg("--getenv")
        .arg("VERILATOR_ROOT")
        .output()
        .unwrap()
        .stdout;
    let mut verilator_root = String::from_utf8_lossy(&verilator_root_raw).to_string();
    if verilator_root.ends_with('\n') {
        verilator_root.pop();
    }
    verilator_root
}
