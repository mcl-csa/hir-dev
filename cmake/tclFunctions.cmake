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
  get_property(part_name GLOBAL PROPERTY part_name)
  add_custom_command(
    OUTPUT  ${xci_path}
    DEPENDS ${CMAKE_CURRENT_SOURCE_DIR}/tcl/create_ip.tcl ${ip_path}
    COMMAND ${VIVADO} -nolog -nojournal -mode batch -source ${CMAKE_SOURCE_DIR}/benchmarks/common/tcl/create_ip.tcl -tclargs ${part_name} ${ip_name} ${ip_path} > ${CMAKE_CURRENT_BINARY_DIR}/${ip_name}.log
    )

  add_custom_target(
    ${name}
    DEPENDS ${xci_path}
    )
  set_property(GLOBAL PROPERTY ${name}_XCI ${xci_path})
endfunction()

function (add_affine_benchmark name)
  cmake_parse_arguments(ARGS "" "MLIR"
                          "SV_INCLUDES;VIVADO_IPS" ${ARGN} )
  cmake_path (GET ARGS_MLIR STEM LAST_ONLY affine_name)
  cmake_path (GET ARGS_MLIR PARENT_PATH rel_affine_dir)
  set (affine_path ${CMAKE_CURRENT_SOURCE_DIR}/${ARGS_MLIR})
  set (hir_path ${CMAKE_CURRENT_BINARY_DIR}/${rel_affine_dir}/${affine_name}.hir.mlir)
  set (hir_opt_path ${CMAKE_CURRENT_BINARY_DIR}/${rel_affine_dir}/${affine_name}_opt.hir.mlir)
  set (hir_simplified_path ${CMAKE_CURRENT_BINARY_DIR}/${rel_affine_dir}/${affine_name}_simplified.hir.mlir)
  set (mlir_hw_path ${CMAKE_CURRENT_BINARY_DIR}/${rel_affine_dir}/${affine_name}.hw.mlir)
  set (sv_dir ${CMAKE_CURRENT_BINARY_DIR}/${rel_affine_dir})
  set (output_sv ${sv_dir}/${affine_name}.sv)
  set (vivado_dir ${CMAKE_CURRENT_BINARY_DIR}/${name}_vivado_prj)
  set (vivado_xpr ${vivado_dir}/${affine_name}.xpr)
  set (gen_hir_design_tcl ${CMAKE_SOURCE_DIR}/benchmarks/common/tcl/gen_hir_design.tcl)

  get_property(circt_opt GLOBAL PROPERTY circt_opt_path)

  add_custom_command(
    OUTPUT ${hir_path}
    DEPENDS ${affine_path} circt 
    COMMAND ${circt_opt} -affine-to-hir ${affine_path} > ${hir_path}
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

  add_custom_command(
    OUTPUT ${output_sv}
    DEPENDS ${mlir_hw_path} circt 
    COMMAND ${circt_opt} -export-split-verilog='dir-name=${sv_dir}' ${mlir_hw_path} >/dev/null
  )
  file(REMOVE ${sv_dir}/extern_modules.sv)
  file(GLOB SV_FILES ${sv_dir}/*.sv)
  get_property(constraint_file GLOBAL PROPERTY constraint_file)
  get_property(part_name GLOBAL PROPERTY part_name)
  
  set(ABS_SV_INCLUDES "")
  foreach(rel_path ${ARGS_SV_INCLUDES})
    list(APPEND ABS_SV_INCLUDES ${CMAKE_CURRENT_SOURCE_DIR}/${rel_path})
  endforeach()

  set(VIVADO_IP_XCIS "")
  foreach(ip ${ARGS_VIVADO_IPS})
    get_property(ip_path GLOBAL PROPERTY ${ip}_XCI)
    list(APPEND VIVADO_IP_XCIS ${ip_path})
  endforeach()

  add_custom_command(
    OUTPUT ${vivado_xpr}
    DEPENDS ${output_sv} circt ${ARGS_VIVADO_IPS} ${gen_hir_design_tcl}
    COMMAND ${VIVADO} -nolog -nojournal -mode batch -source ${gen_hir_design_tcl} -tclargs ${part_name} ${constraint_file} ${vivado_dir} ${affine_name} ${SV_FILES} ${ABS_SV_INCLUDES} ${VIVADO_IP_XCIS} > ${vivado_dir}/${affine_name}.log
    #COMMAND echo -nolog -nojournal -mode batch -source ${gen_hir_design_tcl} -tclargs ${part_name} ${constraint_file} ${vivado_dir} ${affine_name} ${SV_FILES} ${ABS_SV_INCLUDES} ${VIVADO_IP_XCIS} > ${vivado_dir}/${affine_name}.log
  )

  add_custom_target(
    ${name}
    DEPENDS ${vivado_xpr}
  )

endfunction()
