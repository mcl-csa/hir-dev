module attributes {hir.hls} {
  func.func private @mul_f32(f32 {hir.delay = 0 : i64}, f32 {hir.delay = 0 : i64}) -> (f32 {hir.delay = 4 : i64}) attributes {argNames = ["a", "b"], hwAccel, llvm.linkage = #llvm.linkage<external>, resultNames = ["out"]}
  func.func private @add_f32(f32 {hir.delay = 0 : i64}, f32 {hir.delay = 0 : i64}) -> (f32 {hir.delay = 5 : i64}) attributes {argNames = ["a", "b"], hwAccel, llvm.linkage = #llvm.linkage<external>, resultNames = ["out"]}
  func.func @dus_hir(%arg0: memref<32x32xf32> {hir.memref.ports = [{rd_latency = 1 : i64, wr_latency = 1 : i64}]}, %arg1: memref<32x32xf32> {hir.memref.ports = [{rd_latency = 1 : i64, wr_latency = 1 : i64}]}) attributes {argNames = ["dus", "img"], hwAccel, llvm.linkage = #llvm.linkage<external>, resultNames = []} {
    %cst = arith.constant 5.000000e-01 : f32
    %cst_0 = arith.constant 2.000000e+00 : f32
    %cst_1 = arith.constant 2.500000e-01 : f32
    %0 = memref.alloca() {hir.memref.ports = [{rd_latency = 1 : i64}, {wr_latency = 1 : i64}], mem_kind = "bram"} : memref<16x16xf32>
    %1 = memref.alloca() {hir.memref.ports = [{rd_latency = 1 : i64}, {wr_latency = 1 : i64}], mem_kind = "bram"} : memref<32x16xf32>
    affine.for %arg2 = 1 to 32 {
      affine.for %arg3 = 1 to 16 {
        %3 = affine.load %arg1[%arg2, %arg3 * 2 - 1] {hir.memref_port = 0 : i64, result_delays = [1]} : memref<32x32xf32>
        %4 = affine.load %arg1[%arg2, %arg3 * 2] {hir.memref_port = 0 : i64, result_delays = [1]} : memref<32x32xf32>
        %5 = func.call @mul_f32(%cst_0, %4) {result_delays = [4]} : (f32, f32) -> f32
        %6 = func.call @add_f32(%3, %5) {result_delays = [5]} : (f32, f32) -> f32
        %7 = affine.load %arg1[%arg2, %arg3 * 2 + 1] {hir.memref_port = 0 : i64, result_delays = [1]} : memref<32x32xf32>
        %8 = func.call @add_f32(%6, %7) {result_delays = [5]} : (f32, f32) -> f32
        %9 = func.call @mul_f32(%8, %cst_1) {result_delays = [4]} : (f32, f32) -> f32
        affine.store %9, %1[%arg2, %arg3] {hir.memref_port = 1 : i64} : memref<32x16xf32>
      } {II = 3 : i64}
    } {II = 50 : i64}
    affine.for %arg2 = 1 to 16 {
      affine.for %arg3 = 1 to 16 {
        %3 = affine.load %1[%arg2 * 2 - 1, %arg3] {hir.memref_port = 0 : i64, result_delays = [1]} : memref<32x16xf32>
        %4 = affine.load %1[%arg2 * 2, %arg3] {hir.memref_port = 0 : i64, result_delays = [1]} : memref<32x16xf32>
        %5 = func.call @mul_f32(%4, %cst_0) {result_delays = [4]} : (f32, f32) -> f32
        %6 = func.call @add_f32(%3, %5) {result_delays = [5]} : (f32, f32) -> f32
        %7 = affine.load %1[%arg2 * 2 + 1, %arg3] {hir.memref_port = 0 : i64, result_delays = [1]} : memref<32x16xf32>
        %8 = func.call @add_f32(%6, %7) {result_delays = [5]} : (f32, f32) -> f32
        %9 = func.call @mul_f32(%8, %cst_1) {result_delays = [4]} : (f32, f32) -> f32
        affine.store %9, %0[%arg2, %arg3] {hir.memref_port = 1 : i64} : memref<16x16xf32>
      } {II = 3 : i64}
    } {II = 50 : i64}
    %2 = memref.alloca() {hir.memref.ports = [{rd_latency = 1 : i64}, {wr_latency = 1 : i64}], mem_kind = "bram"} : memref<16x32xf32>
    affine.for %arg2 = 1 to 16 {
      affine.for %arg3 = 1 to 15 {
        %3 = affine.load %0[%arg2, %arg3] {hir.memref_port = 0 : i64, result_delays = [1]} : memref<16x16xf32>
        affine.store %3, %2[%arg2, %arg3 * 2] {hir.memref_port = 1 : i64} : memref<16x32xf32>
        %4 = affine.load %0[%arg2, %arg3 + 1] {hir.memref_port = 0 : i64, result_delays = [1]} : memref<16x16xf32>
        %5 = func.call @add_f32(%3, %4) {result_delays = [5]} : (f32, f32) -> f32
        %6 = func.call @mul_f32(%5, %cst) {result_delays = [4]} : (f32, f32) -> f32
        affine.store %6, %2[%arg2, %arg3 * 2 + 1] {hir.memref_port = 1 : i64} : memref<16x32xf32>
      } {II = 2 : i64}
    } {II = 32 : i64}
    affine.for %arg2 = 1 to 15 {
      affine.for %arg3 = 1 to 32 {
        %3 = affine.load %2[%arg2, %arg3] {hir.memref_port = 0 : i64, result_delays = [1]} : memref<16x32xf32>
        affine.store %3, %arg0[%arg2 * 2, %arg3] {hir.memref_port = 0 : i64} : memref<32x32xf32>
        %4 = affine.load %2[%arg2 + 1, %arg3] {hir.memref_port = 0 : i64, result_delays = [1]} : memref<16x32xf32>
        %5 = func.call @add_f32(%3, %4) {result_delays = [5]} : (f32, f32) -> f32
        %6 = func.call @mul_f32(%5, %cst) {result_delays = [4]} : (f32, f32) -> f32
        affine.store %6, %arg0[%arg2 * 2 + 1, %arg3] {hir.memref_port = 0 : i64} : memref<32x32xf32>
      } {II = 2 : i64}
    } {II = 64 : i64}
    return
  }
}

