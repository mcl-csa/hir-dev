module {
  func.func @gesummv_hir(%arg0: i32, %arg1: i32, %arg2: memref<8xi32>, %arg3: memref<8x8xi32>, %arg4: memref<8x8xi32>, %arg5: memref<8xi32>, %arg6: memref<8xi32>) attributes {argNames = ["alpha", "beta", "tmp", "A", "B", "X", "Y"], hwAccel, llvm.emit_c_inteface} {
    %c0_i32 = arith.constant 0 : i32
    %0 = memref.alloca() {mem_kind = "reg"} : memref<1xi32>
    %1 = memref.alloca() {mem_kind = "reg"} : memref<1xi32>
    affine.for %arg7 = 0 to 8 {
      affine.store %c0_i32, %1[0] : memref<1xi32>
      affine.store %c0_i32, %0[0] : memref<1xi32>
      affine.for %arg8 = 0 to 8 {
        %7 = affine.load %arg3[%arg7, %arg8] {result_delays = [1]} : memref<8x8xi32>
        %8 = affine.load %arg5[%arg8] {result_delays = [1]} : memref<8xi32>
        %9 = arith.muli %7, %8 {result_delays = [1]} : i32
        %10 = affine.load %arg4[%arg7, %arg8] {result_delays = [1]} : memref<8x8xi32>
        %11 = arith.muli %10, %8 {result_delays = [1]} : i32
        %12 = affine.load %1[0] {result_delays = [0]} : memref<1xi32>
        %13 = arith.addi %12, %9 {result_delays = [0]} : i32
        affine.store %13, %1[0] : memref<1xi32>
        %14 = affine.load %0[0] {result_delays = [0]} : memref<1xi32>
        %15 = arith.addi %14, %11 {result_delays = [0]} : i32
        affine.store %15, %0[0] : memref<1xi32>
      } {II = 1 : i64}
      %2 = affine.load %1[0] {result_delays = [0]} : memref<1xi32>
      affine.store %2, %arg2[%arg7] : memref<8xi32>
      %3 = affine.load %0[0] {result_delays = [0]} : memref<1xi32>
      %4 = arith.muli %arg0, %2 {result_delays = [1]} : i32
      %5 = arith.muli %arg1, %3 {result_delays = [1]} : i32
      %6 = arith.addi %4, %5 {result_delays = [0]} : i32
      affine.store %6, %arg6[%arg7] : memref<8xi32>
    } {II = 18 : i64}
    return
  }
}
