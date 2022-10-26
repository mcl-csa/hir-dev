module attributes {llvm.data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128", llvm.target_triple = "x86_64-unknown-linux-gnu"} {
  func.func @matmul_hir(%arg0: memref<4x4xi32>, %arg1: memref<4x4xi32>, %arg2: memref<4x4xi32>) attributes {hwAccel} {
    %c0_i32 = arith.constant 0 : i32
    %0 = memref.alloca() : memref<5xi32>
    %1 = memref.alloca() : memref<4x4xi32>
    %2 = memref.alloca() : memref<4x4xi32>
    %3 = memref.alloca() : memref<5x4xi32>
    %4 = memref.alloca() : memref<4x4xi32> 
    affine.for %arg3 = 0 to 4 {
      affine.for %arg4 = 0 to 4 {
        %5 = affine.load %arg0[%arg3, %arg4] : memref<4x4xi32>
        affine.store %5, %4[%arg3, %arg4] : memref<4x4xi32>
      }
    }
    affine.for %arg3 = 0 to 4 {
      affine.for %arg4 = 0 to 4 {
        %5 = affine.load %arg1[%arg3, %arg4] : memref<4x4xi32>
        affine.store %5, %2[%arg3, %arg4] : memref<4x4xi32>
      }
    }
    affine.for %arg3 = 0 to 4 {
      affine.for %arg4 = 0 to 4 {
        %5 = affine.load %4[%arg3, %arg4] : memref<4x4xi32>
        affine.store %5, %3[0, %arg4] : memref<5x4xi32>
      }
      affine.for %arg4 = 0 to 4 {
        affine.store %c0_i32, %0[0] : memref<5xi32>
        affine.for %arg5 = 0 to 4 {
          %8 = affine.load %0[%arg5] : memref<5xi32>
          %9 = affine.load %3[%arg4, %arg5] : memref<5x4xi32>
          %10 = affine.load %2[%arg5, %arg4] : memref<4x4xi32>
          %11 = arith.muli %9, %10 : i32
          %12 = arith.addi %8, %11 : i32
          affine.store %12, %0[%arg5 + 1] : memref<5xi32>
          affine.store %9, %3[%arg4 + 1, %arg5] : memref<5x4xi32>
        }
        %5 = affine.load %0[4] : memref<5xi32>
        %6 = affine.load %1[%arg3, %arg4] : memref<4x4xi32>
        %7 = arith.addi %6, %5 : i32
        affine.store %7, %1[%arg3, %arg4] : memref<4x4xi32>
      }
    }
    affine.for %arg3 = 0 to 4 {
      affine.for %arg4 = 0 to 4 {
        %5 = affine.load %1[%arg3, %arg4] : memref<4x4xi32>
        affine.store %5, %arg2[%arg3, %arg4] : memref<4x4xi32>
      }
    }
    return
  }
}
