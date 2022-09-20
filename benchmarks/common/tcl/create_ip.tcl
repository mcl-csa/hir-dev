if {$argc != 4} {
    error "create_ip.tcl expects three argument - fpga_part_name, constaint, name and path of the ip's tcl proc."
}
set partName [lindex $argv 0]
set constraints_xdc [lindex $argv 1]
set ip_name [lindex $argv 2]
set ip_path [lindex $argv 3]
set outputDir .

source $ip_path
file delete -force -- $outputDir/$ip_name

create_project -in_memory -part $partName
$ip_name $outputDir
generate_target all [get_ips]
synth_ip [get_ips]
