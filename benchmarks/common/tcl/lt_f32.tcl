proc lt_f32 {outputDir} {
    create_ip -name floating_point -vendor xilinx.com -library ip -version 7.1 -module_name lt_f32 -dir $outputDir

    set_property -dict [list CONFIG.Operation_Type {Compare} \
        CONFIG.C_Compare_Operation {Greater_Than} \
        CONFIG.Flow_Control {NonBlocking} \
        CONFIG.Maximum_Latency {false} \
        CONFIG.C_Latency {2} \
        CONFIG.A_Precision_Type {Single} \
        CONFIG.C_A_Exponent_Width {8} \
        CONFIG.C_A_Fraction_Width {24} \
        CONFIG.Result_Precision_Type {Custom} \
        CONFIG.C_Result_Exponent_Width {1} \
        CONFIG.C_Result_Fraction_Width {0} \
        CONFIG.C_Mult_Usage {No_Usage} \
        CONFIG.Has_RESULT_TREADY {false} \
        CONFIG.C_Rate {1}] [get_ips lt_f32]
}