use crate::cosim;
use crate::verilator::sv;
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

fn probe_getter(mod_name: &str, fname: &str) -> String {
    format!(
        r#"
extern "C" int64_t get_{fname} (void* p){{
   auto vtop = reinterpret_cast<Vtop *>(p);
   auto data=(int64_t)vtop->{mod_name}->{fname};
   //if(vtop->{mod_name}->{fname}_valid!=0)
   //    std::cout<<"{fname}="<<data<<std::endl;
   return data;
}}

extern "C" int64_t get_{fname}_valid (void* p){{
   auto vtop = reinterpret_cast<Vtop *>(p);
   auto data=(int64_t)vtop->{mod_name}->{fname}_valid;
   //std::cout<<"{fname}_valid="<<data<<std::endl;
   return data;
}}
    "#
    )
}
fn getter(fname: &str) -> String {
    format!(
        r#"extern "C" int64_t get_{fname} (void* p){{
        auto vtop = reinterpret_cast<Vtop *>(p);
        auto data=(int64_t)vtop->{fname};
        //std::cout<<"{fname}="<<data<<std::endl;
        return data;
    }}"#
    )
}

fn setter(fname: &str, width: u32) -> String {
    let arg_type = get_verilator_type(width);
    format!(
        r#"extern "C" void set_{fname} (void* p, int64_t value){{
        auto vtop = reinterpret_cast<Vtop *>(p);
        //std::cout <<"SET: {fname} = "<< value<<std::endl;
        vtop->{fname} = ({arg_type})value;
    }}"#
    )
}

fn build_getters_and_setters(top_func: &cosim::Function) -> Vec<String> {
    top_func
        .args
        .iter()
        .map(|arg| Vec::<sv::Arg>::from(arg))
        .flatten()
        .map(|sv_arg| match sv_arg {
            sv::Arg::In(sv::Wire { name, width }) => setter(&name, width),
            sv::Arg::Out(sv::Wire { name, .. }) => getter(&name),
        })
        .collect()
}

fn build_probe_getters(top_func: &cosim::Function) -> Vec<String> {
    top_func
        .probes
        .iter()
        .map(|probe| probe_getter(&top_func.name, &probe.name))
        .collect()
}

pub fn build_cpp_wrapper(top_func: &cosim::Function) -> String {
    let mut code = vec![
        r#"#include "Vtop.h""#.to_owned(),
        format!(r#"#include "Vtop_{}.h""#, &top_func.name),
        "#include <stdint.h>".to_owned(),
        "#include <iostream>".to_owned(),
        "#include <verilated_vcd_c.h>".to_owned(),
        r#"extern "C" void* alloc_vtop(){{
            //std::cout <<"alloc_vtop called."<<std::endl;
            auto vtop = new Vtop;
            return reinterpret_cast<void*>(vtop);
        }}"#
        .to_owned(),
        r#"extern "C" void dealloc_vtop(void* p){{
            //std::cout <<"dealloc_vtop called."<<std::endl;
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
    let mut probes = build_probe_getters(top_func);
    code.append(&mut probes);
    let code = code.join("\n");
    code
}

pub fn build_verilator_config(top_func: &cosim::Function) -> String {
    let mut config = Vec::from(["`verilator_config\n".to_owned()]);
    config.extend(top_func.probes.iter().map(|probe| {
        format!(
            r#"
public -module "{mod}" -var "{var}"
public -module "{mod}" -var "{var}_valid"
            "#,
            mod=&top_func.name, var=&probe.name
        )
    }));
    config.join("\n")
}
