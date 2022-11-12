module attributes {hir.hls} {
  func.func private @add_f32(f32 {hir.delay = 0 : i64}, f32 {hir.delay = 0 : i64}) -> (f32 {hir.delay = 5 : i64}) attributes {argNames = ["a", "b"], hwAccel, llvm.linkage = #llvm.linkage<external>, resultNames = ["out"]}
  func.func private @mul_f32(f32 {hir.delay = 0 : i64}, f32 {hir.delay = 0 : i64}) -> (f32 {hir.delay = 4 : i64}) attributes {argNames = ["a", "b"], hwAccel, llvm.linkage = #llvm.linkage<external>, resultNames = ["out"]}
  func.func @kernel_2mm_hir(%arg0: f32 {hir.delay = 0 : i64}, %arg1: f32 {hir.delay = 0 : i64}, %arg2: memref<8x8xf32> {hir.memref.ports = [{rd_latency = 1 : i64}, {wr_latency = 1 : i64}]}, %arg3: memref<8x8xf32> {hir.memref.ports = [{rd_latency = 1 : i64}]}, %arg4: memref<8x8xf32> {hir.memref.ports = [{rd_latency = 1 : i64}]}, %arg5: memref<8x8xf32> {hir.memref.ports = [{rd_latency = 1 : i64}]}, %arg6: memref<8x8xf32> {hir.memref.ports = [{rd_latency = 1 : i64}, {wr_latency = 1 : i64}]}) attributes {argNames = ["alpha", "beta", "tmp", "A", "B", "C", "D"], hwAccel, llvm.linkage = #llvm.linkage<external>, resultNames = []} {
    %cst = arith.constant 0.000000e+00 : f32
    %0 = memref.alloca() {hir.memref.ports = [{rd_latency = 0 : i64}, {wr_latency = 1 : i64}], mem_kind = "reg"} : memref<f32>
    %1 = memref.alloca() {hir.memref.ports = [{rd_latency = 0 : i64}, {wr_latency = 1 : i64}], mem_kind = "reg"} : memref<f32>
    affine.for %arg7 = 0 to 8 {
      affine.for %arg8 = 0 to 8 {
        affine.store %cst, %1[] {hir.memref_port = 1 : i64} : memref<f32>
        affine.for %arg9 = 0 to 8 {
          %3 = affine.load %1[] {hir.memref_port = 0 : i64, result_delays = [0]} : memref<f32>
          %4 = affine.load %arg3[%arg7, %arg9] {hir.memref_port = 0 : i64, result_delays = [1]} : memref<8x8xf32>
          %5 = affine.load %arg4[%arg9, %arg8] {hir.memref_port = 0 : i64, result_delays = [1]} : memref<8x8xf32>
          %6 = func.call @mul_f32(%4, %5) {result_delays = [4]} : (f32, f32) -> f32
          %7 = func.call @mul_f32(%arg0, %6) {result_delays = [4]} : (f32, f32) -> f32
          %8 = func.call @add_f32(%3, %7) {result_delays = [5]} : (f32, f32) -> f32
          affine.store %8, %1[] {hir.memref_port = 1 : i64} : memref<f32>
        } {II = 6 : i64}
        %2 = affine.load %1[] {hir.memref_port = 0 : i64, result_delays = [0]} : memref<f32>
        affine.store %2, %arg2[%arg7, %arg8] {hir.memref_port = 1 : i64} : memref<8x8xf32>
      } {II = 200 : i64}
    } {II = 6500 : i64}
    affine.for %arg7 = 0 to 8 {
      affine.for %arg8 = 0 to 8 {
        %2 = affine.load %arg6[%arg7, %arg8] {hir.memref_port = 0 : i64, result_delays = [1]} : memref<8x8xf32>
        %3 = func.call @mul_f32(%2, %arg1) {result_delays = [4]} : (f32, f32) -> f32
        affine.store %3, %0[] {hir.memref_port = 1 : i64} : memref<f32>
        affine.for %arg9 = 0 to 8 {
          %5 = affine.load %0[] {hir.memref_port = 0 : i64, result_delays = [0]} : memref<f32>
          %6 = affine.load %arg2[%arg7, %arg9] {hir.memref_port = 0 : i64, result_delays = [1]} : memref<8x8xf32>
          %7 = affine.load %arg5[%arg9, %arg8] {hir.memref_port = 0 : i64, result_delays = [1]} : memref<8x8xf32>
          %8 = func.call @mul_f32(%6, %7) {result_delays = [4]} : (f32, f32) -> f32
          %9 = func.call @add_f32(%5, %8) {result_delays = [5]} : (f32, f32) -> f32
          affine.store %9, %0[] {hir.memref_port = 1 : i64} : memref<f32>
        } {II = 6 : i64}
        %4 = affine.load %0[] {hir.memref_port = 0 : i64, result_delays = [0]} : memref<f32>
        affine.store %4, %arg6[%arg7, %arg8] {hir.memref_port = 1 : i64} : memref<8x8xf32>
      } {II = 200 : i64}
    } {II = 6500 : i64}
    return
  }
}

