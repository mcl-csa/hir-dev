#inputs to the script
#   - partName.
#   - input top level system-verilog file path.
#   - list of vivado ips.
#   - list of extra include sv files.

# Usage: vivado -mode tcl -source gen_hir_design.tcl --tclargs xc7vx690tffg1761-2 top_level.sv includes/helper.sv ip.xci

set partName [lindex $argv 0]
set constraints_xdc [lindex $argv 1]
set output_dir [lindex $argv 2]
set top_module_name [lindex $argv 3]

set idx 4
set sv_files [list ]
set xci_files {}
while { $idx < $argc } {
    set arg [lindex $argv $idx]
    set ext [file extension $arg]
    if {$ext == ".sv"} {
        lappend sv_files $arg
    } else {
        if {$ext != ".xci"} {
            error "Expected .sv or .xci files. Got $ext"
        }
        lappend xci_files $arg
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
#create_fileset -srcset sources_1
#create_fileset -constrset constrs_1

#add_files -fileset sources $sv_files
foreach {sv_path} $sv_files {
    puts $sv_path
    add_files -fileset sources_1 $sv_path
}

add_files -fileset constrs_1  $constraints_xdc

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
#set_property -name "top_auto_set" -value "0" -objects $obj

update_compile_order -fileset sources_1
generate_target all [get_ips]

#create_run -name synth_1 -part $partName -srcset sources_1 -flow {Vivado Synthesis 2022} -strategy "Vivado Synthesis Defaults" -report_strategy {No Reports} -constrset constrs_1
launch_runs synth_1 -jobs 1
wait_on_run synth_1
set_property STEPS.PHYS_OPT_DESIGN.IS_ENABLED true [get_runs impl_1]
launch_runs impl_1 -jobs 1
wait_on_run impl_1
open_run impl_1
report_utilization -hierarchical -file $output_dir/${top_module_name}_utilization.rpt
close_design
close_project
