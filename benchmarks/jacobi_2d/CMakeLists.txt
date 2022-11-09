add_sv_target(jacobi_2d 
    MLIR 
    src/mlir/jacobi_2d_hir.mlir

    OUTPUT_SV
    src/mlir/jacobi_2d_hir.sv
)

add_vivado_project_target(jacobi_2d_prj
    TOP_MODULE
    jacobi_2d_hir

    HLS_MODULE
    jacobi_2d_hls

    HLS_FILE
    src/hls/jacobi_2d.cpp

    SIM_FILES
    ../../includes/tb_helpers.sv
    testbench/tb_jacobi_2d.sv
    testbench/A.mem
    testbench/B.mem

    DEPENDENCE
    ADD_F32
    MUL_F32
    jacobi_2d

    INCLUDES
    ../../includes/helper.sv
    ../../includes/xil_primitives.sv
)
