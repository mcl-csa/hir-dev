##===- CMakeLists.txt - HIR cmake root ----------------------*- cmake -*-===//
##
## Configure the HIR project build.
##
##===----------------------------------------------------------------------===//

cmake_minimum_required(VERSION 3.20)

if(POLICY CMP0068)
  cmake_policy(SET CMP0068 NEW)
  set(CMAKE_BUILD_WITH_INSTALL_NAME_DIR ON)
endif()

if(POLICY CMP0075)
  cmake_policy(SET CMP0075 NEW)
endif()

if(POLICY CMP0077)
  cmake_policy(SET CMP0077 NEW)
endif()

# CMP0116: Ninja generators transform `DEPFILE`s from `add_custom_command()`
# New in CMake 3.20. https://cmake.org/cmake/help/latest/policy/CMP0116.html
if(POLICY CMP0116)
  cmake_policy(SET CMP0116 OLD)
endif()

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED YES)

#-------------------------------------------------------------------------------
# Project setup and globals
#-------------------------------------------------------------------------------
set(CMAKE_EXPORT_COMPILE_COMMANDS ON)
project(hir)

#include helper functions.
include(cmake/tclFunctions.cmake)

# Add circt project.
add_circt_project(xc7vx690tffg1761-2 includes/constraints.xdc circt)

#Add subdirectories.
add_subdirectory(benchmarks)
