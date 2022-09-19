#mul_f32
proc multiplier_f32 {outputDir} {
    create_ip -name floating_point -vendor xilinx.com -library ip -version 7.1 -module_name multiplier_f32 -dir $outputDir
    set_property -dict [list CONFIG.Component_Name {multiplier_f32} \
        CONFIG.Operation_Type {Multiply} \
        CONFIG.Flow_Control {NonBlocking} \
        CONFIG.Maximum_Latency {false} \
        CONFIG.C_Latency {4} \
        CONFIG.A_Precision_Type {Single} \
        CONFIG.C_A_Exponent_Width {8} \
        CONFIG.C_A_Fraction_Width {24} \
        CONFIG.Result_Precision_Type {Single} \
        CONFIG.C_Result_Exponent_Width {8} \
        CONFIG.C_Result_Fraction_Width {24} \
        CONFIG.C_Mult_Usage {Full_Usage} \
        CONFIG.Has_RESULT_TREADY {false} \
        CONFIG.C_Rate {1}] [get_ips multiplier_f32]
}