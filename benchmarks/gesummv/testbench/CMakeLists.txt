cmake_minimum_required(VERSION 3.20)
project(gesummv_hir)
set (CMAKE_EXPORT_COMPILE_COMMANDS ON)
include(${VERILATOR_FUNCTIONS})

add_verilator_project(${PROJECT_NAME}
  TOP_MODULE
  gesummv_hir
  
  TESTBENCH
  main.cpp
  ../src/c/gesummv.cpp
  ../../common/verilator/helper.cpp
  
  EXTRA_SV_FILES
  ../../../includes/helper.sv
)