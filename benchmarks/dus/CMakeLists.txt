add_sv_target(dus 
    MLIR 
    src/mlir/dus_hir.mlir

    OUTPUT_SV
    src/mlir/dus_hir.sv
)

add_vivado_project_target(dus_prj
    TOP_MODULE
    dus_hir

    HLS_MODULE
    dus_hls

    HLS_FILE
    src/hls/dus.cpp

    SIM_FILES
    ../../includes/tb_helpers.sv
    testbench/tb_dus.sv
    testbench/img.mem

    DEPENDENCE
    ADD_F32
    MUL_F32
    dus

    INCLUDES
    ../../includes/helper.sv
    ../../includes/xil_primitives.sv
    src/hls/dus_hls.sv
)
