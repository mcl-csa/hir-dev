#subtract_f32
proc subtract_f32 {outputDir} {
    create_ip -name floating_point -vendor xilinx.com -library ip -version 7.1 -module_name subtract_f32 -dir $outputDir
    set_property -dict [list CONFIG.Component_Name {subtract_f32} \
        CONFIG.Add_Sub_Value {Subtract} \
        CONFIG.Flow_Control {NonBlocking} \
        CONFIG.Maximum_Latency {false} \
        CONFIG.C_Latency {8} \
        CONFIG.Has_RESULT_TREADY {false}] [get_ips subtract_f32]
}