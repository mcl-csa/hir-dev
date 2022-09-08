set partName xc7vx690tffg1761-2
set outputDir ../build/
file mkdir $outputDir

set files [glob -nocomplain "$outputDir/*"]
if {[llength $files] != 0} {
    # clear folder contents
    puts "deleting contents of $outputDir"
    file delete -force {*}[glob -directory $outputDir *]; 
}

create_project -in_memory -part $partName

#mul_f32
create_ip -name floating_point -vendor xilinx.com -library ip -version 7.1 -module_name mul_f32 -dir $outputDir
set_property -dict [list CONFIG.Component_Name {mul_f32} \
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
    CONFIG.C_Rate {1}] [get_ips mul_f32]

#add_f32
create_ip -name floating_point -vendor xilinx.com -library ip -version 7.1 -module_name add_f32 -dir $outputDir
set_property -dict [list CONFIG.Component_Name {add_f32} \
    CONFIG.Add_Sub_Value {Add} \
    CONFIG.Flow_Control {NonBlocking} \
    CONFIG.Maximum_Latency {false} \
    CONFIG.C_Latency {8} \
    CONFIG.Has_RESULT_TREADY {false}] [get_ips add_f32]

#sub_f32
create_ip -name floating_point -vendor xilinx.com -library ip -version 7.1 -module_name sub_f32 -dir $outputDir
set_property -dict [list CONFIG.Component_Name {sub_f32} \
    CONFIG.Add_Sub_Value {Subtract} \
    CONFIG.Flow_Control {NonBlocking} \
    CONFIG.Maximum_Latency {false} \
    CONFIG.C_Latency {8} \
    CONFIG.Has_RESULT_TREADY {false}] [get_ips sub_f32]

generate_target all [get_ips]

# Synthesize all the IP
synth_ip [get_ips]
exit
