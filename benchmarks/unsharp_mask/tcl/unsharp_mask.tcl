# Usage would be "vivado -mode tcl -source run_bft_kintex7_batch.tcl" 

# STEP#0: define the fpga part name and output directory area.
set partName xc7vx690tffg1761-2
set outputDir ./build/vivado_outputs
file mkdir $outputDir

set files [glob -nocomplain "$outputDir/*"]
# delete content of the output directory.
if {[llength $files] != 0} {
    # clear folder contents
    puts "deleting contents of $outputDir"
    file delete -force {*}[glob -directory $outputDir *]; 
} 

# STEP#1: setup design sources and constraints
read_verilog -sv  [ glob ./src/*.sv ]
read_xdc ./src/constraints.xdc

# STEP#2: run synthesis.
synth_design -top bft -part xc7k70tfbg484-2
write_checkpoint -force $outputDir/post_synth.dcp
report_timing_summary -file $outputDir/post_synth_timing_summary.rpt
report_power -file $outputDir/post_synth_power.rpt

# STEP#3: run placement, logic opt and route design.
opt_design
place_design
phys_opt_design
route_design
write_checkpoint -force $outputDir/post_route.dcp
report_timing_summary -file $outputDir/post_route_timing_summary.rpt
report_timing -sort_by group -max_paths 100 -path_type summary -file $outputDir/post_route_timing.rpt
report_utilization -hierarchical -file $outputDir/post_route_util.rpt
write_xdc -no_fixed_only -force $outputDir/bft_impl.xdc
