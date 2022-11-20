add_sv_target(kernel_2mm 
    MLIR 
    src/mlir/2mm_hir.mlir

    OUTPUT_SV
    src/mlir/kernel_2mm_hir.sv
)

add_vivado_project_target(kernel_2mm_prj
    TOP_MODULE
    kernel_2mm_hir

    HLS_MODULE
    kernel_2mm_hls

    HLS_FILE
    src/hls/2mm.cpp

    SIM_FILES
    ../../includes/tb_helpers.sv
    testbench/tb_2mm.sv
    testbench/T.mem
    testbench/A.mem
    testbench/B.mem
    testbench/C.mem
    testbench/D.mem

    DEPENDENCE
    ADD_F32
    MUL_F32
    kernel_2mm

    INCLUDES
    ../../includes/helper.sv
    ../../includes/xil_primitives.sv
    src/hls/2mm_hls.sv
)
