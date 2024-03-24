module attributes {hir.hls} {
  func.func private @select_f32(i8 {hir.delay = 0 : i64}, f32 {hir.delay = 0 : i64}, f32 {hir.delay = 0 : i64}) -> (f32 {hir.delay = 0 : i64}) attributes {argNames = ["cmp", "a", "b"], hwAccel, llvm.linkage = #llvm.linkage<external>, resultNames = ["out"]}
  func.func private @ugt_f32(f32 {hir.delay = 0 : i64}, f32 {hir.delay = 0 : i64}) -> (i8 {hir.delay = 1 : i64}) attributes {argNames = ["a", "b"], hwAccel, llvm.linkage = #llvm.linkage<external>, resultNames = ["out"]}
  func.func private @sub_f32(f32 {hir.delay = 0 : i64}, f32 {hir.delay = 0 : i64}) -> (f32 {hir.delay = 5 : i64}) attributes {argNames = ["a", "b"], hwAccel, llvm.linkage = #llvm.linkage<external>, resultNames = ["out"]}
  func.func private @mul_f32(f32 {hir.delay = 0 : i64}, f32 {hir.delay = 0 : i64}) -> (f32 {hir.delay = 4 : i64}) attributes {argNames = ["a", "b"], hwAccel, llvm.linkage = #llvm.linkage<external>, resultNames = ["out"]}
  func.func private @add_f32(f32 {hir.delay = 0 : i64}, f32 {hir.delay = 0 : i64}) -> (f32 {hir.delay = 5 : i64}) attributes {argNames = ["a", "b"], hwAccel, llvm.linkage = #llvm.linkage<external>, resultNames = ["out"]}
  func.func private @neg_f32(f32 {hir.delay = 0 : i64}) -> (f32 {hir.delay = 0 : i64}) attributes {argNames = ["a"], hwAccel, resultNames = ["out"]}
  func.func @unsharp_mask(%arg0: memref<32x32xf32> {hir.memref.ports = [{rd_latency = 1 : i64}]}, %arg1: memref<32x32xf32> {hir.memref.ports = [{wr_latency = 1 : i64}]}, %arg2: memref<8xf32> {hir.memref.ports = [{rd_latency = 1 : i64}]}, %arg3: memref<8xf32> {hir.memref.ports = [{rd_latency = 1 : i64}]}) attributes {argNames = ["img", "mask_img", "kernelX", "kernelY"], hwAccel, llvm.linkage = #llvm.linkage<external>, resultNames = []} {
    %cst = arith.constant 4.000000e+00 : f32
    %cst_0 = arith.constant 0.000000e+00 : f32
    %cst_1 = arith.constant 3.000000e+00 : f32
    %cst_2 = arith.constant 1.000000e-03 : f32
    %0 = memref.alloca() {hir.memref.ports = [{rd_latency = 1 : i64}, {wr_latency = 1 : i64}], mem_kind = "bram"} : memref<32x32xf32>
    %1 = memref.alloca() {hir.memref.ports = [{rd_latency = 1 : i64}, {wr_latency = 1 : i64}], mem_kind = "bram"} : memref<32x32xf32>
    %2 = memref.alloca() {hir.memref.ports = [{rd_latency = 1 : i64}, {wr_latency = 1 : i64}], mem_kind = "bram"} : memref<32x32xf32>
    %3 = memref.alloca() {hir.memref.ports = [{rd_latency = 0 : i64}, {wr_latency = 1 : i64}], mem_kind = "reg"} : memref<f32>
    affine.store %cst_0, %3[] {hir.memref_port = 1 : i64} : memref<f32>
    affine.for %arg4 = 0 to 27 {
      affine.for %arg5 = 0 to 27 {
        affine.store %cst_0, %3[] {hir.memref_port = 1 : i64} : memref<f32>
        affine.for %arg6 = 0 to 5 {
          %6 = affine.load %3[] {hir.memref_port = 0 : i64, result_delays = [0]} : memref<f32>
          %7 = affine.load %arg2[%arg6] {hir.memref_port = 0 : i64, result_delays = [1]} : memref<8xf32>
          %8 = affine.load %arg0[%arg4, %arg5 + %arg6] {hir.memref_port = 0 : i64, result_delays = [1]} : memref<32x32xf32>
          %9 = func.call @mul_f32(%7, %8) {result_delays = [4]} : (f32, f32) -> f32
          %10 = func.call @add_f32(%6, %9) {result_delays = [5]} : (f32, f32) -> f32
          affine.store %10, %3[] {hir.memref_port = 1 : i64} : memref<f32>
        } {II = 6 : i64}
        %5 = affine.load %3[] {hir.memref_port = 0 : i64, result_delays = [0]} : memref<f32>
        affine.store %5, %2[%arg4, %arg5] {hir.memref_port = 1 : i64} : memref<32x32xf32>
      } {II = 32 : i64}
    } {II = 870 : i64}
    %4 = memref.alloca() {hir.memref.ports = [{rd_latency = 0 : i64}, {wr_latency = 1 : i64}], mem_kind = "reg"} : memref<f32>
    affine.store %cst_0, %4[] {hir.memref_port = 1 : i64} : memref<f32>
    affine.for %arg4 = 0 to 27 {
      affine.for %arg5 = 0 to 27 {
        affine.store %cst_0, %4[] {hir.memref_port = 1 : i64} : memref<f32>
        affine.for %arg6 = 0 to 5 {
          %6 = affine.load %4[] {hir.memref_port = 0 : i64, result_delays = [0]} : memref<f32>
          %7 = affine.load %arg3[%arg6] {hir.memref_port = 0 : i64, result_delays = [1]} : memref<8xf32>
          %8 = affine.load %2[%arg4 + %arg6, %arg5] {hir.memref_port = 0 : i64, result_delays = [1]} : memref<32x32xf32>
          %9 = func.call @mul_f32(%7, %8) {result_delays = [4]} : (f32, f32) -> f32
          %10 = func.call @add_f32(%6, %9) {result_delays = [5]} : (f32, f32) -> f32
          affine.store %10, %4[] {hir.memref_port = 1 : i64} : memref<f32>
        } {II = 6 : i64}
        %5 = affine.load %4[] {hir.memref_port = 0 : i64, result_delays = [0]} : memref<f32>
        affine.store %5, %1[%arg4, %arg5] {hir.memref_port = 1 : i64} : memref<32x32xf32>
      } {II = 32 : i64}
    } {II = 870 : i64}
    affine.for %arg4 = 0 to 32 {
      affine.for %arg5 = 0 to 32 {
        %5 = affine.load %arg0[%arg4, %arg5] {hir.memref_port = 0 : i64, result_delays = [1]} : memref<32x32xf32>
        %6 = func.call @mul_f32(%cst, %5) {result_delays = [4]} : (f32, f32) -> f32
        %7 = affine.load %1[%arg4, %arg5] {hir.memref_port = 0 : i64, result_delays = [1]} : memref<32x32xf32>
        %8 = func.call @mul_f32(%cst_1, %7) {result_delays = [4]} : (f32, f32) -> f32
        %9 = func.call @sub_f32(%6, %8) {result_delays = [5]} : (f32, f32) -> f32
        affine.store %9, %0[%arg4, %arg5] {hir.memref_port = 1 : i64} : memref<32x32xf32>
      } {II = 1 : i64}
    } {II = 36 : i64}
    affine.for %arg4 = 0 to 32 {
      affine.for %arg5 = 0 to 32 {
        %5 = affine.load %arg0[%arg4, %arg5] {hir.memref_port = 0 : i64, result_delays = [1]} : memref<32x32xf32>
        %6 = affine.load %1[%arg4, %arg5] {hir.memref_port = 0 : i64, result_delays = [1]} : memref<32x32xf32>
        %7 = func.call @sub_f32(%5, %6) {result_delays = [5]} : (f32, f32) -> f32
        %8 = func.call @ugt_f32(%7, %cst_0) {result_delays = [1]} : (f32, f32) -> i8
        %9 = func.call @neg_f32(%7) {result_delays = [0]} : (f32) -> f32
        %10 = func.call @select_f32(%8, %7, %9) {result_delays = [0]} : (i8, f32, f32) -> f32
        %11 = func.call @ugt_f32(%cst_2, %10) {result_delays = [1]} : (f32, f32) -> i8
        %12 = affine.load %0[%arg4, %arg5] {hir.memref_port = 0 : i64, result_delays = [1]} : memref<32x32xf32>
        %13 = func.call @select_f32(%11, %5, %12) {result_delays = [0]} : (i8, f32, f32) -> f32
        affine.store %13, %arg1[%arg4, %arg5] {hir.memref_port = 0 : i64} : memref<32x32xf32>
      } {II = 1 : i64}
    } {II = 36 : i64}
    return
  }
}
