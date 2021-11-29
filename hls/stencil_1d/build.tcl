set script_path [ file dirname [ file normalize [ info script ] ] ]
puts $script_path

file mkdir -p ../build
cd ../build

open_project stencil_1d
set_top stencil_1d_hls
add_files $script_path/stencil_1d.cpp
open_solution "solution1"
set_part {xc7vx690t-ffg1761-2}
create_clock -period 5 -name default
config_sdx -optimization_level none -target none
config_export -format ip_catalog -rtl verilog -vivado_optimization_level 2
set_clock_uncertainty 12.5%
#csim_design
time csynth_design
#quit
#cosim_design
export_design -flow impl -rtl verilog -format ip_catalog
quit
