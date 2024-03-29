use serde_derive::Deserialize;
use std::path::Path;

#[derive(Deserialize, Debug)]
pub struct Config {
    pub dependencies: Dependencies,
    pub test: Vec<Test>,
}

impl Config {
    pub fn prepend_path(&mut self, path: &Path) {
        self.dependencies.prepend_path(path);
        for test in &mut self.test {
            test.prepend_path(path);
        }
    }
}
#[derive(Deserialize, Debug, Clone)]
pub struct Test {
    pub top: String,
    pub test_file: String,
    pub hir_file: String,
    pub includes: Vec<String>,
}

impl Test {
    fn prepend_path(&mut self, path: &Path) {
        self.test_file = join_path(path, &self.test_file);
        self.hir_file = join_path(path, &self.hir_file);
        let mut canonical_includes = Vec::new();
        for file in &self.includes {
            canonical_includes.push(join_path(path, file));
        }
        self.includes = canonical_includes;
    }
}

#[derive(Deserialize, Debug)]
pub struct Dependencies {
    pub circt_opt: String,
    pub mlir_opt: String,
    pub mlir_translate: String,
    pub verilator: String,
    pub cxx: String,
    pub llc: String,
}

impl Dependencies {
    fn prepend_path(&mut self, path: &Path) {
        self.circt_opt = join_path(path, &self.circt_opt);
        self.mlir_opt = join_path(path, &self.mlir_opt);
        self.mlir_translate = join_path(path, &self.mlir_translate);
        self.verilator = join_path(path, &self.verilator);
        self.cxx = join_path(path, &self.cxx);
        self.llc = join_path(path, &self.llc);
    }
}

//---------------------------------------------------------------------------//
//-----------------------Private Functions-----------------------------------//
//---------------------------------------------------------------------------//

fn join_path(path1: &Path, path2: &String) -> String {
    let mut path1 = path1.to_path_buf();
    path1.push(path2);
    let path = path1.canonicalize();
    match path {
        Ok(p) => p.to_str().unwrap().to_owned(),
        Err(_) => panic!("Bad path: {:?}", path1.to_str()),
    }
}
