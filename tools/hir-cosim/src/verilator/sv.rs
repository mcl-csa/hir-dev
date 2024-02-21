use crate::cosim;
use std::convert::From;

pub struct Wire {
    pub name: String,
    pub width: u32,
}

pub enum Arg {
    In(Wire),
    Out(Wire),
}

impl From<&cosim::ArgInfo> for Vec<Arg> {
    fn from(arg_info: &cosim::ArgInfo) -> Vec<Arg> {
        match arg_info {
            cosim::ArgInfo::Int(v) => vec![Arg::In(Wire {
                name: v.name.clone(),
                width: v.width,
            })],
            cosim::ArgInfo::Float(v) => vec![Arg::In(Wire {
                name: v.name.clone(),
                width: v.width,
            })],
            cosim::ArgInfo::Memref(v) => build_mem_arg(v),
        }
    }
}

fn build_mem_arg(mem_info: &cosim::MemrefArgInfo) -> Vec<Arg> {
    mem_info
        .ports
        .iter()
        .map(|port_info| {
            build_mem_port(
                port_info,
                mem_info.addr_width(),
                mem_info.element.get_width(),
            )
        })
        .flatten()
        .collect()
}

fn build_mem_port(port_info: &cosim::Port, addr_width: u32, data_width: u32) -> Vec<Arg> {
    let mut sv_args = vec![
        Arg::Out(Wire {
            name: format!("{}_addr_en", port_info.name),
            width: 1,
        }),
        Arg::Out(Wire {
            name: format!("{}_addr_data", port_info.name),
            width: addr_width,
        }),
    ];

    if port_info.is_readable() {
        sv_args.push(Arg::Out(Wire {
            name: format!("{}_rd_en", port_info.name),
            width: 1,
        }));
        sv_args.push(Arg::In(Wire {
            name: format!("{}_rd_data", port_info.name),
            width: data_width,
        }));
    };

    if port_info.is_writable() {
        sv_args.push(Arg::Out(Wire {
            name: format!("{}_wr_en", port_info.name),
            width: 1,
        }));
        sv_args.push(Arg::Out(Wire {
            name: format!("{}_wr_data", port_info.name),
            width: data_width,
        }));
    }
    sv_args
}
