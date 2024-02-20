use crate::cosim_info::{Direction, Function};
fn get_verilator_type(width: u32) -> String {
    assert!(width > 0);
    if width <= 8 {
        "int8_t".to_owned()
    } else if width <= 32 {
        "int32_t".to_owned()
    } else {
        "int64_t".to_owned()
    }
}

fn get(fname: &str) -> String {
    format!(
        r#"extern "C" int64_t get_{fname} (void* p){{
        auto vtop = reinterpret_cast<Vtop *>(p);
        return (int64_t)vtop->{fname};
    }}"#
    )
}

fn set(fname: &str, width: u32) -> String {
    let arg_type = get_verilator_type(width);
    format!(
        r#"extern "C" void set_{fname} (void* p, int64_t value){{
        auto vtop = reinterpret_cast<Vtop *>(p);
        std::cout <<"SET: {fname} = "<< value<<std::endl;
        vtop->{fname} = ({arg_type})value;
    }}"#
    )
}

fn build_getters_and_setters(top_func: &Function) -> Vec<String> {
    top_func
        .get_sv_ports()
        .iter()
        .map(|sv_port| match sv_port.direction {
            Direction::IN => set(&sv_port.name, sv_port.width),
            Direction::OUT => get(&sv_port.name),
        })
        .collect()
}

pub fn build_cpp_wrapper(top_func: &Function) -> String {
    let mut code = vec![
        r#"#include "Vtop.h""#.to_owned(),
        "#include <stdint.h>".to_owned(),
        "#include <iostream>".to_owned(),
        "#include <verilated_vcd_c.h>".to_owned(),
        r#"extern "C" void* alloc_vtop(){{
            std::cout <<"alloc_vtop called."<<std::endl;
            auto vtop = new Vtop;
            return reinterpret_cast<void*>(vtop);
        }}"#
        .to_owned(),
        r#"extern "C" void dealloc_vtop(void* p){{
            std::cout <<"dealloc_vtop called."<<std::endl;
            auto vtop= reinterpret_cast<Vtop*>(p);
            delete vtop;
        }}"#
        .to_owned(),
        r#"extern "C" void* alloc_trace(void* p){{
                    Verilated::traceEverOn(true);
                    auto vtop= reinterpret_cast<Vtop*>(p);
                    auto trace = new VerilatedVcdC;
                    vtop->trace(trace,99);//trace upto 99 levels.
                    trace->open("simulation.vcd");
                    return (void*) trace;
                }}"#
        .to_owned(),
        r#"extern "C" void dealloc_trace(void* t){{
            auto trace = reinterpret_cast<VerilatedVcdC*>(t);
            trace->close();
            delete trace;

        }}"#
        .to_owned(),
        r#"extern "C" void tick(void* p, void* t, uint32_t cycle){{
                    auto vtop= reinterpret_cast<Vtop*>(p);
                    auto trace = reinterpret_cast<VerilatedVcdC*>(t);
                    vtop->eval();
                    trace->dump(cycle);

        }}"#
        .to_owned(),
        r#"extern "C" void set_clk(void* p, uint32_t v){
            auto vtop= reinterpret_cast<Vtop*>(p);
            vtop->clk = v;
        }"#
        .to_owned(),
        r#"extern "C" void set_rst(void* p, uint32_t v){
            auto vtop= reinterpret_cast<Vtop*>(p);
            vtop->rst = v;
        }"#
        .to_owned(),
        r#"extern "C" void set_t(void* p, uint32_t v){
            auto vtop= reinterpret_cast<Vtop*>(p);
            vtop->t = v;
        }"#
        .to_owned(),
    ];
    let mut defs = build_getters_and_setters(top_func);
    code.append(&mut defs);
    let code = code.join("\n");
    code
}
