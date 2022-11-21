add_sv_target(optical_flow_df 
    MLIR 
    src/mlir/optical_flow_hir.mlir

    OUTPUT_SV
    src/mlir/optical_flow_hir.sv
)

add_vivado_project_target(optical_flow_df_prj
    TOP_MODULE
    optical_flow_hir

    HLS_MODULE
    optical_flow_hls

    HLS_FILE
    src/hls/optical_flow.cpp

    SIM_FILES
    ../../includes/tb_helpers.sv
    testbench/tb_optical_flow.sv
    testbench/img.mem
    testbench/prev.mem

    DEPENDENCE
    ADD_F32
    SUB_F32
    MUL_F32
    DIV_F32
    optical_flow_df

    INCLUDES
    ../../includes/helper.sv
    ../../includes/xil_primitives.sv
    src/hls/optical_flow_hls.sv
)
