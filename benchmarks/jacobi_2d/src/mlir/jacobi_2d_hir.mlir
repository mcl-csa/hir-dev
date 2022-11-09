module attributes {hir.hls} {
  func.func private @mul_f32(f32 {hir.delay = 0 : i64}, f32 {hir.delay = 0 : i64}) -> (f32 {hir.delay = 4 : i64}) attributes {argNames = ["a", "b"], hwAccel, llvm.linkage = #llvm.linkage<external>, resultNames = ["out"]}
  func.func private @add_f32(f32 {hir.delay = 0 : i64}, f32 {hir.delay = 0 : i64}) -> (f32 {hir.delay = 5 : i64}) attributes {argNames = ["a", "b"], hwAccel, llvm.linkage = #llvm.linkage<external>, resultNames = ["out"]}
  func.func @jacobi_2d_hir(%arg0: memref<32x32xf32> {hir.memref.ports = [{rd_latency = 1 : i64}, {wr_latency = 1 : i64}]}, %arg1: memref<32x32xf32> {hir.memref.ports = [{rd_latency = 1 : i64}, {wr_latency = 1 : i64}]}) attributes {argNames = ["A", "B"], hwAccel, llvm.linkage = #llvm.linkage<external>, resultNames = []} {
    %cst = arith.constant 2.000000e-01 : f32
    affine.for %arg2 = 0 to 2 {
      affine.for %arg3 = 1 to 31 {
        affine.for %arg4 = 1 to 31 {
          %0 = affine.load %arg0[%arg3, %arg4] {result_delays = [1]} : memref<32x32xf32>
          %1 = affine.load %arg0[%arg3, %arg4 - 1] {result_delays = [1]} : memref<32x32xf32>
          %2 = func.call @add_f32(%0, %1) {result_delays = [5]} : (f32, f32) -> f32
          %3 = affine.load %arg0[%arg3, %arg4 + 1] {result_delays = [1]} : memref<32x32xf32>
          %4 = affine.load %arg0[%arg3 + 1, %arg4] {result_delays = [1]} : memref<32x32xf32>
          %5 = func.call @add_f32(%3, %4) {result_delays = [5]} : (f32, f32) -> f32
          %6 = func.call @add_f32(%2, %5) {result_delays = [5]} : (f32, f32) -> f32
          %7 = affine.load %arg0[%arg3 - 1, %arg4] {result_delays = [1]} : memref<32x32xf32>
          %8 = func.call @add_f32(%6, %7) {result_delays = [5]} : (f32, f32) -> f32
          %9 = func.call @mul_f32(%cst, %8) {result_delays = [4]} : (f32, f32) -> f32
          affine.store %9, %arg1[%arg3, %arg4] : memref<32x32xf32>
        } {II = 5 : i64}
      } {II = 150 : i64}
      affine.for %arg3 = 1 to 31 {
        affine.for %arg4 = 1 to 31 {
          %0 = affine.load %arg1[%arg3, %arg4] {result_delays = [1]} : memref<32x32xf32>
          affine.store %0, %arg0[%arg3, %arg4] : memref<32x32xf32>
        } {II = 1 : i64}
      } {II = 36 : i64}
    } {II = 4600 : i64}
    return
  }
}

