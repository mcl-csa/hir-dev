add_sv_target(harris_df 
    MLIR 
    src/mlir/harris_hir.mlir

    OUTPUT_SV
    src/mlir/harris_hir.sv
)

add_vivado_project_target(harris_df_prj
    TOP_MODULE
    harris_hir

    HLS_MODULE
    harris_hls

    HLS_FILE
    src/hls/harris.cpp

    SIM_FILES
    ../../includes/tb_helpers.sv
    testbench/tb_harris.sv
    testbench/img.mem

    DEPENDENCE
    ADD_F32
    SUB_F32
    MUL_F32
    harris_df

    INCLUDES
    ../../includes/helper.sv
    ../../includes/xil_primitives.sv
    src/hls/harris_hls.sv
)
