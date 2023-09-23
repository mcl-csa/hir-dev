function (add_verilator_project name)
 if(POLICY CMP0144)
  cmake_policy(SET CMP0144 NEW)
 endif()

  cmake_parse_arguments(ARG "" "TOP_MODULE;"
                          "TESTBENCH;EXTRA_SV_FILES" ${ARGN} )

  if(NOT ARG_TOP_MODULE)  
    message(FATAL_ERROR "Must specify TOP_MODULE.")
    return()
  endif()

  if(NOT ARG_TESTBENCH)  
    message(FATAL_ERROR "Must specify TESTBENCH.")
    return()
  endif()


  
  #Find Verilator.
  find_package(verilator)
  if(NOT verilator_FOUND)
    message(FATAL_ERROR "Verilator not found.")
    return()
  endif() 

  set(C_TB_FILES "")
  foreach( rel_path ${ARG_TESTBENCH})
    list(APPEND C_TB_FILES ${CMAKE_CURRENT_SOURCE_DIR}/${rel_path})
  endforeach()

  set(EXTRA_SV_FILES ${CMAKE_CURRENT_SOURCE_DIR}/${ARG_EXTRA_SV_FILES})

  set(OUTPUT_DIR ${CMAKE_CURRENT_BINARY_DIR}/verilator_build)
  file(MAKE_DIRECTORY ${OUTPUT_DIR})

  file(GLOB GENERATED_SV_FILES "${OUTPUT_SV_DIR}/*.sv")  

  add_executable(${name} ${C_TB_FILES})

  target_compile_options(${name} PRIVATE -g -O0)

  target_link_options(${name} PRIVATE -g)
  verilate(${name} SOURCES ${GENERATED_SV_FILES} ${EXTRA_SV_FILES} TOP_MODULE ${ARG_TOP_MODULE} PREFIX V${ARG_TOP_MODULE} TRACE VERILATOR_ARGS --vpi)

endfunction()