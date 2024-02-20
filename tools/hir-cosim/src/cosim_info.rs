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
    pub args: Vec<Arg>,
    pub probes: Vec<Probe>,
}

impl Function {
    pub fn get_sv_args(&self) -> Vec<SVArg> {
        self.args.iter().map(|arg| arg.get_sv_arg()).collect()
    }

    pub fn get_sv_ports(&self) -> Vec<SVPort> {
        let mut sv_ports = Vec::new();
        for sv_port in self.get_sv_args() {
            let mut arg_sv_ports = match sv_port {
                SVArg::Int(arg) => vec![SVPort {
                    name: arg.name.clone(),
                    width: arg.width,
                    direction: Direction::IN,
                }],
                SVArg::Float(arg) => vec![SVPort {
                    name: arg.name.clone(),
                    width: arg.width,
                    direction: Direction::IN,
                }],
                SVArg::Memref(arg) => {
                    let mut v = Vec::new();
                    for port in arg.ports {
                        v.push(SVPort {
                            name: port.addr_en.name.clone(),
                            width: port.addr_en.width,
                            direction: Direction::OUT,
                        });
                        v.push(SVPort {
                            name: port.addr_data.name.clone(),
                            width: port.addr_data.width,
                            direction: Direction::OUT,
                        });
                        if port.rd_en.is_some() {
                            let en = port.rd_en.unwrap();
                            let data = port.rd_data.unwrap();
                            v.push(SVPort {
                                name: en.name.clone(),
                                width: en.width,
                                direction: Direction::OUT,
                            });
                            v.push(SVPort {
                                name: data.name.clone(),
                                width: data.width,
                                direction: Direction::IN,
                            });
                        }
                        if port.wr_en.is_some() {
                            let en = port.wr_en.unwrap();
                            let data = port.wr_data.unwrap();
                            v.push(SVPort {
                                name: en.name.clone(),
                                width: en.width,
                                direction: Direction::OUT,
                            });
                            v.push(SVPort {
                                name: data.name.clone(),
                                width: data.width,
                                direction: Direction::OUT,
                            });
                        }
                    }
                    v
                }
            };
            sv_ports.append(&mut arg_sv_ports);
        }
        sv_ports
    }
}

#[derive(Debug, Clone)]
pub enum Direction {
    IN,
    OUT,
}

#[derive(Debug, Clone)]
pub struct SVPort {
    pub name: String,
    pub direction: Direction,
    pub width: u32,
}

#[derive(Debug, Clone)]
pub struct SVIntArg {
    pub name: String,
    pub width: u32,
}

#[derive(Debug, Clone)]
pub struct SVFloatArg {
    pub name: String,
    pub width: u32,
}

#[derive(Debug, Clone)]
pub struct SVMemrefPort {
    name: String,
    rd_latency: u32,
    wr_latency: u32,
    pub addr_en: SVIntArg,
    pub addr_data: SVIntArg,
    pub rd_en: Option<SVIntArg>,
    pub rd_data: Option<SVIntArg>,
    pub wr_en: Option<SVIntArg>,
    pub wr_data: Option<SVIntArg>,
}

#[derive(Debug, Clone)]
pub struct SVMemrefArg {
    pub name: String,
    pub ports: Vec<SVMemrefPort>,
}

#[derive(Debug, Clone)]
pub enum SVArg {
    Int(SVIntArg),
    Float(SVFloatArg),
    Memref(SVMemrefArg),
}

#[derive(Serialize, Deserialize, Debug, Clone)]
pub struct IntArg {
    pub name: String,
    pub width: u32,
}

impl IntArg {
    fn get_sv_arg(&self) -> SVIntArg {
        SVIntArg {
            name: self.name.clone(),
            width: self.width.clone(),
        }
    }
}

#[derive(Serialize, Deserialize, Debug, Clone)]
pub struct FloatArg {
    pub name: String,
    pub width: u32,
}

impl FloatArg {
    fn get_sv_arg(&self) -> SVFloatArg {
        SVFloatArg {
            name: self.name.clone(),
            width: self.width.clone(),
        }
    }
}

#[derive(Serialize, Deserialize, Debug, Clone)]
pub struct MemrefArg {
    pub name: String,
    pub element: Element,
    pub ports: Vec<Port>,
    shape: Vec<usize>,
}

impl MemrefArg {
    pub fn shape(&self) -> &[usize] {
        &self.shape
    }
    fn get_sv_arg(&self) -> SVMemrefArg {
        let mut sv_ports = Vec::new();
        for (i, port) in self.ports.iter().enumerate() {
            let addr_en = SVIntArg {
                name: format!("{}_p{}_addr_en", self.name, i),
                width: 1,
            };
            let addr_width = (self
                .shape
                .iter()
                .copied()
                .reduce(|a, b| a * b)
                .unwrap()
                .to_owned() as i32)
                .ilog2();
            let addr_data = SVIntArg {
                name: format!("{}_p{}_addr_data", self.name, i),
                width: addr_width,
            };
            let mut rd_en = None;
            let mut rd_data = None;
            let mut wr_en = None;
            let mut wr_data = None;
            if port.rd_latency.is_some() {
                rd_en = Some(SVIntArg {
                    name: format!("{}_p{}_rd_en", self.name, i),
                    width: 1,
                });
                rd_data = Some(SVIntArg {
                    name: format!("{}_p{}_rd_data", self.name, i),
                    width: self.element.get_width(),
                });
            }
            if port.wr_latency.is_some() {
                wr_en = Some(SVIntArg {
                    name: format!("{}_p{}_wr_en", self.name, i),
                    width: 1,
                });
                wr_data = Some(SVIntArg {
                    name: format!("{}_p{}_wr_data", self.name, i),
                    width: self.element.get_width(),
                });
            }
            sv_ports.push(SVMemrefPort {
                addr_en,
                addr_data,
                rd_en,
                rd_data,
                wr_en,
                wr_data,
            });
        }
        SVMemrefArg {
            name: self.name.clone(),
            ports: sv_ports,
        }
    }
}

#[derive(Serialize, Deserialize, Debug, Clone)]
pub enum Element {
    Int(u32),
    Float(u32),
}
impl Element {
    fn get_width(&self) -> u32 {
        match self {
            Element::Int(w) => *w,
            Element::Float(w) => *w,
        }
    }
}
#[derive(Serialize, Deserialize, Debug, Clone)]
pub struct Port {
    pub name: String,
    pub rd_latency: Option<u32>,
    pub wr_latency: Option<u32>,
}

#[derive(Serialize, Deserialize, Debug, Clone)]
pub struct Probe {
    pub id: u32,
    pub name: String,
}

#[derive(Serialize, Deserialize, Debug, Clone)]
pub enum Arg {
    Int(IntArg),
    Float(FloatArg),
    Memref(MemrefArg),
}

impl Arg {
    fn get_sv_arg(&self) -> SVArg {
        match self {
            Arg::Int(arg) => SVArg::Int(arg.get_sv_arg()),
            Arg::Float(arg) => SVArg::Float(arg.get_sv_arg()),
            Arg::Memref(arg) => SVArg::Memref(arg.get_sv_arg()),
        }
    }
}
