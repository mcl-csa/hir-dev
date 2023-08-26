add_sv_target(gesummv 
    MLIR 
    src/mlir/gesummv_hir.mlir

    OUTPUT_SV
    src/mlir/gesummv_hir.sv
)

add_verilator_target(gesummv_verilated
    VERILATOR_PROJECT_DIR
    testbench

    SV_TARGET 
    gesummv
)

add_vivado_project_target(gesummv_prj
    TOP_MODULE
    gesummv_hir

    HLS_MODULE 
    gesummv_hls

    HLS_FILE
    src/hls/gesummv.cpp

    SIM_FILES
    ../../includes/tb_helpers.sv
    testbench/tb_gesummv.sv
    testbench/A_vector.mem
    testbench/B_vector.mem
    testbench/X_vector.mem

    DEPENDENCE
    gesummv

    INCLUDES
    ../../includes/helper.sv
    ../../includes/xil_primitives.sv
)
