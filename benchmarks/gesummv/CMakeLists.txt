add_sv_target(gesummv 
    MLIR 
    src/mlir/gesummv_hir.mlir

    OUTPUT_SV
    src/mlir/gesummv_hir.sv
)

add_vivado_project_target(gesummv_prj
    TOP_MODULE
    gesummv_hir

    DEPENDENCE
    gesummv

    INCLUDES
    ../../includes/helper.sv
    ../../includes/xil_primitives.sv
)
