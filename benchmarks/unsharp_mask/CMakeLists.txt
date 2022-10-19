add_sv_target(unsharp_mask 
    MLIR 
    src/mlir/unsharp_mask_hir.mlir

    OUTPUT_SV
    src/mlir/unsharp_mask_hir.sv
)

add_vivado_project_target(unsharp_mask_prj
    TOP_MODULE
    unsharp_mask_hir

    HLS_MODULE
    unsharp_mask_hls

    HLS_FILE
    src/hls/unsharp_mask.cpp

    DEPENDENCE
    ADD_F32
    SUB_F32
    MUL_F32
    GT_F32 
    LT_F32 
    unsharp_mask

    INCLUDES
    ../../includes/helper.sv
    ../../includes/xil_primitives.sv
)
