use crate::cosim;
use std::fs;
pub fn get_recorder() -> String {
    format!(
        r#"
std::vector<int32_t> probes;
std::vector<int32_t> probe_ids;

extern "C" void record(int32_t value, int32_t id) {{
    probes.push_back(value);
    probe_ids.push_back(id);
}}

extern "C" int32_t get_num_probes() {{
    return probes.size();
}}

extern "C" int32_t* get_probe_values() {{
    return probes.data();
}}

extern "C" int32_t* get_probe_ids() {{
    return probe_ids.data();
}}
   "#
    )
}

pub fn generate_cpu_wrapper(path: &str, top: &cosim::Function) {
    let code = format!(
        r#"
        #include <cstdint>
        #include <iostream>
        #include <vector>
        //Recorder function
        {recorder}

        union CArg{{
            int32_t int32;
            float float32;
            int32_t* array_of_i32;
            float* array_of_f32;
        }};


        //top-level function.
        {top_decl}

        //cpu wrapper function.
        {cpu_wrapper}

    "#,
        recorder = get_recorder(),
        top_decl = get_top_decl(top),
        cpu_wrapper = get_wrapper_def(top),
    );
    fs::write(path, code).unwrap();
}

fn get_top_decl(top: &cosim::Function) -> String {
    //FIXME: We are assuming ints are 32 bit. We need to generalize based on int size.
    let params = top
        .args
        .iter()
        .map(|arg| {
            match arg {
                cosim::ArgInfo::Int(_) => "int32_t",
                cosim::ArgInfo::Float(_) => "float",
                cosim::ArgInfo::Memref(m) => match m.element {
                    cosim::Element::Int(_) => "int32_t*",
                    cosim::Element::Float(_) => "float*",
                },
            }
            .to_owned()
        })
        .reduce(|acc, nth| format!("{acc},{nth}"))
        .unwrap();
    format!(
        r#"
        extern "C"
        void {topname}({params});
        "#,
        topname = top.name
    )
}

fn get_wrapper_def(top: &cosim::Function) -> String {
    let cargs = top
        .args
        .iter()
        .enumerate()
        .map(|(i, arg)| match arg {
            cosim::ArgInfo::Int(_) => format!("arg[{i}].int32"),
            cosim::ArgInfo::Float(_) => format!("arg[{i}].float32"),
            cosim::ArgInfo::Memref(m) => match m.element {
                cosim::Element::Int(_) => format!("arg[{i}].array_of_i32"),
                cosim::Element::Float(_) => format!("arg[{i}].array_of_f32"),
            },
        })
        .reduce(|acc, nth| format!("{acc},{nth}"))
        .unwrap();
    format!(
        r#"extern "C"
           void cpu_wrapper(CArg arg[]){{
                {topname}({cargs});
           }}"#,
        topname = top.name
    )
}
