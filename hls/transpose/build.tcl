############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
############################################################

open_project transpose
set_top transpose
add_files transpose.cpp
open_solution "solution1"
set_part {xc7vx690t-ffg1761-2}
create_clock -period 5 -name default
config_sdx -optimization_level none -target none
config_export -format ip_catalog -rtl verilog -vivado_optimization_level 2
set_clock_uncertainty 12.5%
#csim_design
puts "KINGSHUK starts"
csynth_design
puts "KINGSHUK ends"

quit
#osim_design
#xport_design -flow impl -rtl verilog -format ip_catalog
