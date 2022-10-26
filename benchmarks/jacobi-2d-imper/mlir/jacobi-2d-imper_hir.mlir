module {
  func.func @kernel_jacobi_2d_imper(%arg0: i32, %arg1: i32, %arg2: memref<32x32xf32>, %arg3: memref<32x32xf32>) attributes {} {
    %cst = arith.constant 2.000000e-01 : f32
    affine.for %arg4 = 0 to 2 {
      affine.for %arg5 = 1 to 31 {
        affine.for %arg6 = 1 to 31 {
          %0 = affine.load %arg2[%arg5, %arg6] : memref<32x32xf32>
          %1 = affine.load %arg2[%arg5, %arg6 - 1] : memref<32x32xf32>
          %2 = arith.addf %0, %1 : f32
          %3 = affine.load %arg2[%arg5, %arg6 + 1] : memref<32x32xf32>
          %4 = arith.addf %2, %3 : f32
          %5 = affine.load %arg2[%arg5 + 1, %arg6] : memref<32x32xf32>
          %6 = arith.addf %4, %5 : f32
          %7 = affine.load %arg2[%arg5 - 1, %arg6] : memref<32x32xf32>
          %8 = arith.addf %6, %7 : f32
          %9 = arith.mulf %cst, %8 : f32
          affine.store %9, %arg3[%arg5, %arg6] : memref<32x32xf32>
        }
      }
      affine.for %arg5 = 1 to 31 {
        affine.for %arg6 = 1 to 31 {
          %0 = affine.load %arg3[%arg5, %arg6] : memref<32x32xf32>
          affine.store %0, %arg2[%arg5, %arg6] : memref<32x32xf32>
        }
      }
    }
    return
  }
}
