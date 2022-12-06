function (add_circt_project part_name rel_constraint_file rel_circt_path)
  find_program(VIVADO vivado REQUIRED)
  find_program(VITIS_HLS vitis_hls REQUIRED)
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

function(add_vivado_ip_target name rel_ip_path)
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

function (add_sv_target name)
  cmake_parse_arguments(ARG "" "MLIR"
                          "OUTPUT_SV" ${ARGN} )
  if(NOT ARG_MLIR)  
    message(FATAL_ERROR "Could not find any sv files for mlir target ${mlir_target}")
  endif()

  if(NOT ARG_OUTPUT_SV)  
    message(FATAL_ERROR "Could not find any sv files for mlir target ${mlir_target}")
  endif()

  cmake_path (GET ARG_MLIR STEM LAST_ONLY mlir_name)
  cmake_path (GET ARG_MLIR PARENT_PATH rel_mlir_dir)
  set (mlir_path ${CMAKE_CURRENT_SOURCE_DIR}/${ARG_MLIR})
  set (hir_path ${CMAKE_CURRENT_BINARY_DIR}/${rel_mlir_dir}/${mlir_name}.hir.mlir)
  set (hir_opt_path ${CMAKE_CURRENT_BINARY_DIR}/${rel_mlir_dir}/${mlir_name}_opt.hir.mlir)
  set (hir_simplified_path ${CMAKE_CURRENT_BINARY_DIR}/${rel_mlir_dir}/${mlir_name}_simplified.hir.mlir)
  set (mlir_hw_path ${CMAKE_CURRENT_BINARY_DIR}/${rel_mlir_dir}/${mlir_name}.hw.mlir)
  set (sv_dir ${CMAKE_CURRENT_BINARY_DIR}/${rel_mlir_dir})
  get_property(circt_opt GLOBAL PROPERTY circt_opt_path)

  add_custom_command(
    OUTPUT ${hir_path}
    DEPENDS ${mlir_path} circt 
    COMMAND ${circt_opt} -affine-to-hir ${mlir_path} > ${hir_path}
  )

  add_custom_command(
    OUTPUT ${hir_opt_path}
    DEPENDS ${hir_path} circt 
    COMMAND ${circt_opt} -hir-opt ${hir_path} > ${hir_opt_path}
  )

  add_custom_command(
    OUTPUT ${hir_simplified_path}
    DEPENDS ${hir_opt_path} circt 
    COMMAND ${circt_opt} -hir-simplify ${hir_opt_path} > ${hir_simplified_path}
  )

  add_custom_command(
    OUTPUT ${mlir_hw_path}
    DEPENDS ${hir_simplified_path} circt 
    COMMAND ${circt_opt} -hir-to-hw ${hir_simplified_path} > ${mlir_hw_path}
  )

  set(ABS_OUTPUT_SV "")
  foreach(rel_path ${ARG_OUTPUT_SV})
    list(APPEND ABS_OUTPUT_SV ${CMAKE_CURRENT_BINARY_DIR}/${rel_path})
  endforeach()

  add_custom_command(
    OUTPUT ${ABS_OUTPUT_SV}
    DEPENDS ${mlir_hw_path} circt 
    COMMAND ${circt_opt} -export-split-verilog='dir-name=${sv_dir}' ${mlir_hw_path} >/dev/null
  )

  add_custom_target(
    ${name}
    DEPENDS ${ABS_OUTPUT_SV}
  )
  set_target_properties(${name}  PROPERTIES OUTPUT_FILES ${ABS_OUTPUT_SV} )
endfunction()

function (add_vivado_project_target name)
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
    get_target_property(OUTPUT_FILES ${target} OUTPUT_FILES)
    if(NOT OUTPUT_FILES)  
      message(FATAL_ERROR "Could not find any sv or xci files output or mlir target}")
    endif()
    list(APPEND SRC_FILES ${OUTPUT_FILES})
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
    DEPENDS  ${VIVADO} ${gen_hir_design_tcl} ${constraint_file} ${SRC_FILES} ${hls_zip}
    COMMAND ${VIVADO} -nolog -nojournal -mode batch -source ${gen_hir_design_tcl} -tclargs ${part_name} ${constraint_file} ${vivado_dir} ${ARG_TOP_MODULE} ${hls_dir} ${ARG_HLS_MODULE} ${SRC_FILES} -sim ${SIM_FILES}> ${logfile}
  )

  add_custom_target(
    ${name}
    DEPENDS ${vivado_xpr} 
  )
endfunction()
