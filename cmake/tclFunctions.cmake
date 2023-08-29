include(ExternalProject)
function (add_circt_project part_name rel_constraint_file rel_circt_path)
  #Find Vivado.
  find_program(VIVADO vivado)
  if(VIVADO)
      find_program(VITIS_HLS vitis_hls REQUIRED)
  else()
      message(STATUS "Vivado not found.")
  endif()

  set (circt_path ${CMAKE_CURRENT_SOURCE_DIR}/${rel_circt_path})
  set(circt_build_path ${circt_path}/build)
  add_custom_target(
    circt ALL
    COMMAND cmake --build ${circt_build_path} --target circt-opt circt-lsp-server
  )
  set_property(GLOBAL PROPERTY part_name ${part_name})
  set_property(GLOBAL PROPERTY constraint_file ${CMAKE_CURRENT_SOURCE_DIR}/${rel_constraint_file})
  set_property(GLOBAL PROPERTY circt_opt_path ${circt_build_path}/bin/circt-opt)
endfunction()

function (add_sv_target name)
  cmake_parse_arguments(ARG "" "MLIR"
                          "OUTPUT_SV" ${ARGN} )
  if(NOT ARG_MLIR)  
    message(FATAL_ERROR "MLIR files not specified mlir target ${mlir_target}.")
  endif()

  if(NOT ARG_OUTPUT_SV)  
    message(FATAL_ERROR "OUTPUT_SV files not specified for mlir target ${mlir_target}.")
  endif()

  cmake_path (GET ARG_MLIR STEM LAST_ONLY mlir_name)
  cmake_path (GET ARG_MLIR PARENT_PATH rel_mlir_dir)
  set (OUTPUT_DIR ${CMAKE_CURRENT_BINARY_DIR}/${rel_mlir_dir})
  set (mlir_file ${CMAKE_CURRENT_SOURCE_DIR}/${ARG_MLIR})
  set (hir_file ${OUTPUT_DIR}/${mlir_name}.hir.mlir)
  set (hir_opt_file ${OUTPUT_DIR}/${mlir_name}_opt.hir.mlir)
  set (hir_simplified_file ${OUTPUT_DIR}/${mlir_name}_simplified.hir.mlir)
  set (hir_hw_file ${OUTPUT_DIR}/${mlir_name}.hw.mlir)
  set (sv_dir ${OUTPUT_DIR}/SystemVerilog)
  set (log_file ${sv_dir}/run.log)
  get_property(circt_opt GLOBAL PROPERTY circt_opt_path)
  
  message (STATUS "Generating MLIR files in ${OUTPUT_DIR}")
  file(MAKE_DIRECTORY ${OUTPUT_DIR})
  file(MAKE_DIRECTORY ${sv_dir})

  #A single command allows us to get the precise source map from the sv file to the mlir_file.
  add_custom_command(
    DEPENDS  ${circt} ${mlir_file} 
    COMMAND ${circt_opt} -affine-to-hir -hir-opt -hir-simplify -hir-to-hw -export-split-verilog='dir-name=${sv_dir}' ${mlir_file} > ${log_file}
    #COMMAND ${circt_opt} -affine-to-hir ${mlir_file} > ${hir_file}
    #COMMAND ${circt_opt} -hir-opt ${hir_file}  > ${hir_opt_file}
    #COMMAND ${circt_opt} -hir-simplify ${hir_opt_file} > ${hir_simplified_file}
    #COMMAND ${circt_opt} -hir-to-hw ${hir_simplified_file} > ${hir_hw_file}
    #COMMAND ${circt_opt} -export-split-verilog='dir-name=${sv_dir}' ${hir_hw_file} > ${log_file}
    OUTPUT ${log_file}
  )

  add_custom_target(
    ${name}
    DEPENDS ${log_file}
  )
 
  set_target_properties(${name}  PROPERTIES OUTPUT_SV_DIR ${sv_dir} )
  set_target_properties(${name}  PROPERTIES TARGET_TYPE "sv_target" )
endfunction()


function(add_vivado_ip_target name rel_ip_path)
  if(NOT VIVADO)
    message(STATUS "Not generating target ${name}")
    return()
  endif()
  set (ip_path ${CMAKE_CURRENT_SOURCE_DIR}/${rel_ip_path})
  cmake_path (GET ip_path STEM LAST_ONLY ip_name)
  message (STATUS ${ip_name})
  set (xci_path ${CMAKE_CURRENT_BINARY_DIR}/${ip_name}/${ip_name}.xci)
  set (logfile ${CMAKE_CURRENT_BINARY_DIR}/${name}.log)
  get_property(part_name GLOBAL PROPERTY part_name)
  set(create_ip_tcl ${CMAKE_SOURCE_DIR}/benchmarks/common/tcl/create_ip.tcl)

  get_property(constraint_file GLOBAL PROPERTY constraint_file)
  add_custom_command(
    OUTPUT  ${xci_path} ${logfile}
    DEPENDS ${create_ip_tcl} ${constraint_file} ${ip_path}
    COMMAND ${VIVADO} -nolog -nojournal -mode batch -source ${create_ip_tcl} -tclargs ${part_name} ${constraint_file} ${ip_name} ${ip_path} > ${logfile}
  )

  add_custom_target(
    ${name}
    DEPENDS ${xci_path} ${logfile}
  )

  set_property(GLOBAL PROPERTY ${name}_XCI ${xci_path})
  set_target_properties(${name}  PROPERTIES OUTPUT_FILES ${xci_path} )
endfunction()

function (add_vivado_project_target name)
  if(NOT VIVADO)
    message (STATUS "Not generating target ${name}")
    return()
  endif()

  cmake_parse_arguments(ARG "" "TOP_MODULE;HLS_MODULE;HLS_FILE"
                          "DEPENDENCE;INCLUDES;SIM_FILES" ${ARGN} )

  if(NOT ARG_TOP_MODULE)  
    message(FATAL_ERROR "Must specify TOP_MODULE.")
  endif()

  if(NOT ARG_DEPENDENCE)  
    message(FATAL_ERROR "Could not find any dependence.")
  endif()

  if(NOT ARG_HLS_MODULE)  
    message(FATAL_ERROR "Must specify HLS_MODULE.")
  endif()

  if(NOT ARG_HLS_FILE)  
    message(FATAL_ERROR "Must specify HLS_FILE.")
  endif()

  get_property(constraint_file GLOBAL PROPERTY constraint_file)
  get_property(part_name GLOBAL PROPERTY part_name)
  set (vivado_dir ${CMAKE_CURRENT_BINARY_DIR}/${name})
  set (hls_dir ${CMAKE_CURRENT_BINARY_DIR}/hls_${name})
  set (vivado_xpr ${vivado_dir}/${ARG_TOP_MODULE}.xpr)
  set (gen_hls_design_tcl ${CMAKE_SOURCE_DIR}/benchmarks/common/tcl/gen_hls_design.tcl)
  set (gen_hir_design_tcl ${CMAKE_SOURCE_DIR}/benchmarks/common/tcl/gen_hir_design.tcl)

  set(SRC_FILES "")
  foreach(include_file ${ARG_INCLUDES})
    list(APPEND SRC_FILES ${CMAKE_CURRENT_SOURCE_DIR}/${include_file})
  endforeach()


  foreach( target ${ARG_DEPENDENCE})
    get_target_property(TARGET_TYPE ${target} TARGET_TYPE)
    if(${TARGET_TYPE} MATCHES "sv_target") 
      get_target_property(OUTPUT_SV_DIR ${target} OUTPUT_SV_DIR)
      set (HIR_TARGET ${target})
    else()
      get_target_property(OUTPUT_FILES ${target} OUTPUT_FILES)
      if(NOT OUTPUT_FILES)  
        message(FATAL_ERROR "Could not find any sv or xci files output or mlir target}")
      endif()
      list(APPEND SRC_FILES ${OUTPUT_FILES})
    endif()
  endforeach()

  set(SIM_FILES "")
  foreach( sim_file ${ARG_SIM_FILES})
    list(APPEND SIM_FILES ${CMAKE_CURRENT_SOURCE_DIR}/${sim_file})
  endforeach()

  set (hlsLogFile ${CMAKE_CURRENT_BINARY_DIR}/${name}_hls.log)
  set (HLS_FILE ${CMAKE_CURRENT_SOURCE_DIR}/${ARG_HLS_FILE})
  set (hls_zip ${hls_dir}/${ARG_HLS_MODULE}.zip)

  add_custom_command(
    OUTPUT ${hls_zip} ${hlsLogFile}
    DEPENDS  ${VITIS_HLS} ${gen_hls_design_tcl} ${HLS_FILE}
    COMMAND ${VITIS_HLS} -f ${gen_hls_design_tcl} ${part_name} ${HLS_FILE} ${hls_dir} ${ARG_HLS_MODULE} > ${hlsLogFile}
  )

  set (logfile ${CMAKE_CURRENT_BINARY_DIR}/${name}.log)
  add_custom_command(
    OUTPUT ${vivado_xpr} ${logfile} 
    DEPENDS  ${VIVADO} ${gen_hir_design_tcl} ${constraint_file} ${SRC_FILES} ${hls_zip} ${HIR_TARGET}
    COMMAND ${VIVADO} -nolog -nojournal -mode batch -source ${gen_hir_design_tcl} -tclargs ${part_name} ${constraint_file} ${vivado_dir} ${ARG_TOP_MODULE} ${hls_dir} ${ARG_HLS_MODULE} ${SRC_FILES} -sv_dir ${OUTPUT_SV_DIR} -sim ${SIM_FILES}> ${logfile}
  )

  add_custom_target(
    ${name}
    DEPENDS ${vivado_xpr} 
  )
endfunction()

function (add_verilator_target name)
cmake_parse_arguments(ARG "" "SV_TARGET;VERILATOR_PROJECT_DIR"
                          "" ${ARGN} )

  if(NOT ARG_VERILATOR_PROJECT_DIR)  
    message(FATAL_ERROR "Must specify VERILATOR_PROJECT_DIR.")
  endif()

  if(NOT ARG_SV_TARGET)  
    message(FATAL_ERROR "Must specify SV_TARGET.")
  endif()
  set(VERILATOR_FUNCTIONS ${CMAKE_CURRENT_FUNCTION_LIST_DIR}/verilatorFunctions.cmake)

  
  #Find Verilator.
  find_package(verilator)
  if(NOT verilator_FOUND)
    message("Verilator not found. Skipping target ${name}.")
    return()
  endif() 

  get_target_property(OUTPUT_SV_DIR ${ARG_SV_TARGET} OUTPUT_SV_DIR)
  ExternalProject_Add(${name} 
  SOURCE_DIR ${CMAKE_CURRENT_SOURCE_DIR}/${ARG_VERILATOR_PROJECT_DIR}
  DEPENDS ${ARG_SV_TARGET}
  BUILD_ALWAYS ON
  CMAKE_ARGS 
            -DPROJECT_NAME=${name}
            -DVERILATOR_FUNCTIONS=${VERILATOR_FUNCTIONS}
            -DOUTPUT_SV_DIR=${OUTPUT_SV_DIR}
            -DCMAKE_BUILD_TYPE=Debug
  INSTALL_COMMAND ""
  LOG_CONFIGURE ON
  LOG_OUTPUT_ON_FAILURE ON
  )
endfunction()