if {$argc != 3} {
    error "create_ip.tcl expects three argument - fpga part name, name and path of the ip's tcl proc."
}
set partName [lindex $argv 0]
set outputDir .

set ip_name [lindex $argv 1]
set ip_path [lindex $argv 2]
source $ip_path
file delete -force -- $outputDir/$ip_name

create_project -in_memory -part $partName
$ip_name $outputDir
generate_target all [get_ips]
synth_ip [get_ips]
