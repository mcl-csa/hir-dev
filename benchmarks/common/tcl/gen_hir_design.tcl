# Usage: vivado -mode tcl -source gen_hir_design.tcl --tclargs xc7vx690tffg1761-2 top_level.sv includes/helper.sv ip.xci

set partName [lindex $argv 0]
set constraints_xdc [lindex $argv 1]
set output_dir [lindex $argv 2]
set top_module_name [lindex $argv 3]
set hls_ip_dir [lindex $argv 4]
set hls_ip [lindex $argv 5]
puts "$argv"

set idx 6
set sv_files [list ]
set sim_files [list ]
set xci_files {}
set mem_files [list ]

while { $idx < $argc } {
    set arg [lindex $argv $idx]
    set ext [file extension $arg]
    if {$ext == ".sv"} {
        lappend sv_files $arg
    } elseif {$ext == ".xci"} {
        lappend xci_files $arg
    } elseif {$arg == "-sim"} {
        break
    }
    incr idx
}

while { $idx < $argc } {
    set arg [lindex $argv $idx]
    set ext [file extension $arg]
    if {$ext == ".sv"} {
        lappend sim_files $arg
    } elseif {$ext == ".mem"} {
        lappend mem_files $arg
    }
    incr idx
}

set files [glob -nocomplain "$output_dir/*"]
puts "Writing project outputs to $output_dir"
if { [llength $files] != 0 } {
    # clear folder contents
    puts "deleting contents of $output_dir"
    file delete -force {*}[glob -directory $output_dir *];
}

create_project -part $partName  $top_module_name $output_dir
set_msg_config -severity {CRITICAL WARNING} -new_severity ERROR
add_files -fileset sources_1 $sv_files
add_files -fileset constrs_1  $constraints_xdc
read_xdc $constraints_xdc -mode out_of_context
read_mem $mem_files

if {[llength $xci_files]} {
    foreach {xci_path} $xci_files {
        read_ip $xci_path
    }

    set locked [get_property IS_LOCKED [get_ips]]
    set upgrade [get_property UPGRADE_VERSIONS [get_ips]]
    if {$locked == "1" && $upgrade != ""} {
        error "IP is locked or not upgraded. This may be because the ip was generated using an older version of Vivado."
    }
}
set obj [get_filesets sources_1]
set_property -name "top" -value $top_module_name -objects $obj
set_property -name "top_auto_set" -value "0" -objects $obj

set_property  ip_repo_paths  ${hls_ip_dir} [current_project]
update_ip_catalog
create_ip -name ${hls_ip} -vendor xilinx.com -library hls -version 1.0 -module_name ${hls_ip}_0

update_compile_order -fileset sources_1

if {[llength $sim_files]} {
    set_property SOURCE_SET sources_1 [get_filesets sim_1]
    add_files -fileset sim_1 $sim_files
    update_compile_order -fileset sim_1
}

#generate_target all [get_ips]
#launch_runs synth_1 -jobs 1
#wait_on_run synth_1

#set_property STEPS.PHYS_OPT_DESIGN.IS_ENABLED true [get_runs impl_1]
#launch_runs impl_1 -jobs 1
#wait_on_run impl_1
#open_run impl_1
#report_utilization -hierarchical -file $output_dir/${top_module_name}_utilization.rpt
#close_design
close_project
