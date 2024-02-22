use serde_derive::{Deserialize, Serialize};
use std::fs;

pub fn load(path: &str) -> Vec<Function> {
    let cosim_json_str = fs::read_to_string(path).unwrap();
    let cosim_json: Vec<Function> = serde_json::from_str(&cosim_json_str).unwrap();
    cosim_json
}

#[derive(Serialize, Deserialize, Debug, Clone)]
pub struct Function {
    pub name: String,
    pub args: Vec<ArgInfo>,
    pub probes: Vec<ProbeInfo>,
}

#[derive(Serialize, Deserialize, Debug, Clone)]
pub enum ArgInfo {
    Int(IntArgInfo),
    Float(FloatArgInfo),
    Memref(MemrefArgInfo),
}

impl ArgInfo {
    pub fn get_name(&self) -> &str {
        match self {
            Self::Int(info) => &info.name,
            Self::Float(info) => &info.name,
            Self::Memref(info) => &info.name,
        }
    }
}

#[derive(Serialize, Deserialize, Debug, Clone)]
pub struct ProbeInfo {
    pub id: u32,
    pub name: String,
}

#[derive(Serialize, Deserialize, Debug, Clone)]
pub struct IntArgInfo {
    pub name: String,
    pub width: u32,
}

#[derive(Serialize, Deserialize, Debug, Clone)]
pub struct FloatArgInfo {
    pub name: String,
    pub width: u32,
}

#[derive(Serialize, Deserialize, Debug, Clone)]
pub struct MemrefArgInfo {
    pub name: String,
    pub element: Element,
    pub ports: Vec<Port>,
    shape: Vec<usize>,
}

impl MemrefArgInfo {
    pub fn shape(&self) -> &[usize] {
        &self.shape
    }

    pub fn addr_width(&self) -> u32 {
        self.shape
            .iter()
            .map(|u| i32::try_from(*u).unwrap())
            .reduce(|a, b| a * b)
            .unwrap()
            .ilog2()
    }
}

#[derive(Serialize, Deserialize, Debug, Clone)]
pub struct Port {
    pub name: String,
    pub rd_latency: Option<u32>,
    pub wr_latency: Option<u32>,
}

impl Port {
    pub fn is_readable(&self) -> bool {
        self.rd_latency.is_some()
    }
    pub fn is_writable(&self) -> bool {
        self.wr_latency.is_some()
    }
}

#[derive(Serialize, Deserialize, Debug, Clone)]
pub enum Element {
    Int(u32),
    Float(u32),
}

impl Element {
    pub fn get_width(&self) -> u32 {
        match self {
            Element::Int(w) => *w,
            Element::Float(w) => *w,
        }
    }
    pub fn get_numpy_type_str(&self) -> String {
        match self {
            Element::Int(_) => "int32".to_owned(),
            Element::Float(_) => "float32".to_owned(),
        }
    }
}
