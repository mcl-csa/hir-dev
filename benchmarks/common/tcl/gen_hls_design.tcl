set partName [lindex $argv 2]
#xc7vx690t-ffg1761-2
set cppFile [lindex $argv 3]
set outputDir [lindex $argv 4]
set topModuleName [lindex $argv 5]

puts "partName : $partName"
puts "cppFile : $cppFile"
puts "outputDir : $outputDir"
puts "topModuleName : $topModuleName"

set files [glob -nocomplain "$outputDir/*"]
puts "Writing project outputs to $outputDir"
if { [llength $files] != 0 } {
    # clear folder contents
    puts "deleting contents of $outputDir"
    file delete -force {*}[glob -directory $outputDir *];
}
file mkdir $outputDir
cd $outputDir

open_project $topModuleName
set_top $topModuleName
add_files $cppFile
open_solution "solution1"
set_part ${partName}
create_clock -period 5 -name default
config_sdx -optimization_level none -target none
config_export -format ip_catalog -rtl verilog -vivado_optimization_level 2
set_clock_uncertainty 12.5%
csynth_design
#csim_design
#cosim_design
export_design -rtl verilog -format ip_catalog -output ${outputDir}/${topModuleName}.zip
quit
