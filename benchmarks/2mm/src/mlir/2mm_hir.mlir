module attributes {hir.hls} {
  func.func private @add_f32(f32 {hir.delay = 0 : i64}, f32 {hir.delay = 0 : i64}) -> (f32 {hir.delay = 5 : i64}) attributes {argNames = ["a", "b"], hwAccel, llvm.linkage = #llvm.linkage<external>, resultNames = ["out"]}
  func.func private @mul_f32(f32 {hir.delay = 0 : i64}, f32 {hir.delay = 0 : i64}) -> (f32 {hir.delay = 4 : i64}) attributes {argNames = ["a", "b"], hwAccel, llvm.linkage = #llvm.linkage<external>, resultNames = ["out"]}
  func.func @kernel_2mm_hir(%arg0: f32 {hir.delay = 0 : i64}, %arg1: f32 {hir.delay = 0 : i64}, %arg2: memref<32x32xf32> {hir.memref.ports = [{rd_latency = 1 : i64}, {wr_latency = 1 : i64}]}, %arg3: memref<32x32xf32> {hir.memref.ports = [{rd_latency = 1 : i64}]}, %arg4: memref<32x32xf32> {hir.memref.ports = [{rd_latency = 1 : i64}]}, %arg5: memref<32x32xf32> {hir.memref.ports = [{rd_latency = 1 : i64}]}, %arg6: memref<32x32xf32> {hir.memref.ports = [{rd_latency = 1 : i64}, {wr_latency = 1 : i64}]}) attributes {argNames = ["alpha", "beta", "tmp", "A", "B", "C", "D"], hwAccel, llvm.linkage = #llvm.linkage<external>, resultNames = []} {
    %cst = arith.constant 0.000000e+00 : f32
    affine.for %arg7 = 0 to 32 {
      affine.for %arg8 = 0 to 32 {
        affine.store %cst, %arg2[%arg7, %arg8] : memref<32x32xf32>
      } {II = 1 : i64}
    } {II = 32 : i64}
    affine.for %arg7 = 0 to 32 {
      affine.for %arg8 = 0 to 32 {
        affine.for %arg9 = 0 to 32 {
          %0 = affine.load %arg2[%arg7, %arg9] {result_delays = [1]} : memref<32x32xf32>
          %1 = affine.load %arg3[%arg7, %arg8] {result_delays = [1]} : memref<32x32xf32>
          %2 = affine.load %arg4[%arg8, %arg9] {result_delays = [1]} : memref<32x32xf32>
          %3 = func.call @mul_f32(%1, %2) {result_delays = [4]} : (f32, f32) -> f32
          %4 = func.call @mul_f32(%arg0, %3) {result_delays = [4]} : (f32, f32) -> f32
          %5 = func.call @add_f32(%0, %4) {result_delays = [5]} : (f32, f32) -> f32
          affine.store %5, %arg2[%arg7, %arg9] : memref<32x32xf32>
        } {II = 1 : i64}
      } {II = 32 : i64}
    } {II = 1024 : i64}
    affine.for %arg7 = 0 to 32 {
      affine.for %arg8 = 0 to 32 {
        %0 = affine.load %arg6[%arg7, %arg8] {result_delays = [1]} : memref<32x32xf32>
        %1 = func.call @mul_f32(%0, %arg1) {result_delays = [4]} : (f32, f32) -> f32
        affine.store %1, %arg6[%arg7, %arg8] : memref<32x32xf32>
      } {II = 1 : i64}
    } {II = 128 : i64}
    affine.for %arg7 = 0 to 32 {
      affine.for %arg8 = 0 to 32 {
        affine.for %arg9 = 0 to 32 {
          %0 = affine.load %arg6[%arg7, %arg9] {result_delays = [1]} : memref<32x32xf32>
          %1 = affine.load %arg2[%arg7, %arg8] {result_delays = [1]} : memref<32x32xf32>
          %2 = affine.load %arg5[%arg8, %arg9] {result_delays = [1]} : memref<32x32xf32>
          %3 = func.call @mul_f32(%1, %2) {result_delays = [4]} : (f32, f32) -> f32
          %4 = func.call @add_f32(%0, %3) {result_delays = [5]} : (f32, f32) -> f32
          affine.store %4, %arg6[%arg7, %arg9] : memref<32x32xf32>
        } {II = 1 : i64}
      } {II = 32 : i64}
    } {II = 1024 : i64}
    return
  }
}

