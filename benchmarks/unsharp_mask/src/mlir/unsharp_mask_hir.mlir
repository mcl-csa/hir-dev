module attributes {hir.hls} {
  func.func private @select_f32(i8 {hir.delay = 0 : i64}, f32 {hir.delay = 0 : i64}, f32 {hir.delay = 0 : i64}) -> (f32 {hir.delay = 0 : i64}) attributes {argNames = ["cmp", "a", "b"], hwAccel, llvm.linkage = #llvm.linkage<external>, resultNames = ["out"]}
  func.func private @ugt_f32(f32 {hir.delay = 0 : i64}, f32 {hir.delay = 0 : i64}) -> (i8 {hir.delay = 1 : i64}) attributes {argNames = ["a", "b"], hwAccel, llvm.linkage = #llvm.linkage<external>, resultNames = ["out"]}
  func.func private @sub_f32(f32 {hir.delay = 0 : i64}, f32 {hir.delay = 0 : i64}) -> (f32 {hir.delay = 5 : i64}) attributes {argNames = ["a", "b"], hwAccel, llvm.linkage = #llvm.linkage<external>, resultNames = ["out"]}
  func.func private @mul_f32(f32 {hir.delay = 0 : i64}, f32 {hir.delay = 0 : i64}) -> (f32 {hir.delay = 4 : i64}) attributes {argNames = ["a", "b"], hwAccel, llvm.linkage = #llvm.linkage<external>, resultNames = ["out"]}
  func.func private @add_f32(f32 {hir.delay = 0 : i64}, f32 {hir.delay = 0 : i64}) -> (f32 {hir.delay = 5 : i64}) attributes {argNames = ["a", "b"], hwAccel, llvm.linkage = #llvm.linkage<external>, resultNames = ["out"]}
  func.func private @neg_f32(f32 {hir.delay = 0 : i64}) -> (f32 {hir.delay = 0 : i64}) attributes {argNames = ["a"], hwAccel, resultNames = ["out"]}
  func.func @unsharp_mask_hir(%arg0: memref<32x32xf32> {hir.memref.ports = [{rd_latency = 1 : i64}]}, %arg1: memref<32x32xf32> {hir.memref.ports = [{wr_latency = 1 : i64}]}, %arg2: memref<8xf32> {hir.memref.ports = [{rd_latency = 1 : i64}]}, %arg3: memref<8xf32> {hir.memref.ports = [{rd_latency = 1 : i64}]}) attributes {argNames = ["img", "mask_img", "kernelX", "kernelY"], hwAccel, llvm.linkage = #llvm.linkage<external>, resultNames = []} {
    %cst = arith.constant 4.000000e+00 : f32
    %cst_0 = arith.constant 0.000000e+00 : f32
    %cst_1 = arith.constant 3.000000e+00 : f32
    %cst_2 = arith.constant 1.000000e-03 : f32
    %0 = memref.alloca() {hir.memref.ports = [{rd_latency = 1 : i64}, {wr_latency = 1 : i64}], mem_kind = "bram"} : memref<32x32xf32>
    %1 = memref.alloca() {hir.memref.ports = [{rd_latency = 1 : i64}, {wr_latency = 1 : i64}], mem_kind = "bram"} : memref<32x32xf32>
    %2 = memref.alloca() {hir.memref.ports = [{rd_latency = 1 : i64}, {wr_latency = 1 : i64}], mem_kind = "bram"} : memref<32x32xf32>
    %3 = memref.alloca() {hir.memref.ports = [{rd_latency = 1 : i64}, {wr_latency = 1 : i64}], mem_kind = "bram"} : memref<32x32xf32>
    %4 = memref.alloca() {hir.memref.ports = [{rd_latency = 1 : i64}, {wr_latency = 1 : i64}], mem_kind = "bram"} : memref<32x32xf32>
    %5 = memref.alloca() {hir.memref.ports = [{rd_latency = 1 : i64}, {wr_latency = 1 : i64}], mem_kind = "bram"} : memref<32x32xf32>
    %6 = memref.alloca() {hir.memref.ports = [{rd_latency = 1 : i64}, {wr_latency = 1 : i64}], mem_kind = "bram"} : memref<32x32xf32>
    %7 = memref.alloca() {hir.memref.ports = [{rd_latency = 1 : i64}, {wr_latency = 1 : i64}], mem_kind = "bram"} : memref<32x32xf32>
    %8 = memref.alloca() {hir.memref.ports = [{rd_latency = 1 : i64}, {wr_latency = 1 : i64}], mem_kind = "bram"} : memref<32x32xf32>
    affine.for %arg4 = 0 to 32 {
      affine.for %arg5 = 0 to 32 {
        %11 = affine.load %arg0[%arg4, %arg5] {hir.memref_port = 0 : i64, result_delays = [1]} : memref<32x32xf32>
        affine.store %11, %4[%arg4, %arg5] {hir.memref_port = 1 : i64} : memref<32x32xf32>
        affine.store %11, %3[%arg4, %arg5] {hir.memref_port = 1 : i64} : memref<32x32xf32>
      } {II = 1 : i64}
    } {II = 36 : i64}
    affine.for %arg4 = 0 to 32 {
      affine.for %arg5 = 0 to 32 {
        %11 = affine.load %4[%arg4, %arg5] {hir.memref_port = 0 : i64, result_delays = [1]} : memref<32x32xf32>
        affine.store %11, %1[%arg4, %arg5] {hir.memref_port = 1 : i64} : memref<32x32xf32>
        affine.store %11, %2[%arg4, %arg5] {hir.memref_port = 1 : i64} : memref<32x32xf32>
      } {II = 1 : i64}
    } {II = 36 : i64}
    %9 = memref.alloca() {hir.memref.ports = [{rd_latency = 0 : i64}, {wr_latency = 1 : i64}], mem_kind = "reg"} : memref<f32>
    affine.store %cst_0, %9[] {hir.memref_port = 1 : i64} : memref<f32>
    affine.for %arg4 = 0 to 27 {
      affine.for %arg5 = 0 to 27 {
        affine.store %cst_0, %9[] {hir.memref_port = 1 : i64} : memref<f32>
        affine.for %arg6 = 0 to 5 {
          %12 = affine.load %9[] {hir.memref_port = 0 : i64, result_delays = [0]} : memref<f32>
          %13 = affine.load %arg2[%arg6] {hir.memref_port = 0 : i64, result_delays = [1]} : memref<8xf32>
          %14 = affine.load %3[%arg4, %arg5 + %arg6] {hir.memref_port = 0 : i64, result_delays = [1]} : memref<32x32xf32>
          %15 = func.call @mul_f32(%13, %14) {result_delays = [4]} : (f32, f32) -> f32
          %16 = func.call @add_f32(%12, %15) {result_delays = [5]} : (f32, f32) -> f32
          affine.store %16, %9[] {hir.memref_port = 1 : i64} : memref<f32>
        } {II = 10 : i64}
        %11 = affine.load %9[] {hir.memref_port = 0 : i64, result_delays = [0]} : memref<f32>
        affine.store %11, %8[%arg4, %arg5] {hir.memref_port = 1 : i64} : memref<32x32xf32>
      } {II = 60 : i64}
    } {II = 1920 : i64}
    %10 = memref.alloca() {hir.memref.ports = [{rd_latency = 0 : i64}, {wr_latency = 1 : i64}], mem_kind = "reg"} : memref<f32>
    affine.store %cst_0, %10[] {hir.memref_port = 1 : i64} : memref<f32>
    affine.for %arg4 = 0 to 27 {
      affine.for %arg5 = 0 to 27 {
        affine.store %cst_0, %10[] {hir.memref_port = 1 : i64} : memref<f32>
        affine.for %arg6 = 0 to 5 {
          %12 = affine.load %10[] {hir.memref_port = 0 : i64, result_delays = [0]} : memref<f32>
          %13 = affine.load %arg3[%arg6] {hir.memref_port = 0 : i64, result_delays = [1]} : memref<8xf32>
          %14 = affine.load %8[%arg4 + %arg6, %arg5] {hir.memref_port = 0 : i64, result_delays = [1]} : memref<32x32xf32>
          %15 = func.call @mul_f32(%13, %14) {result_delays = [4]} : (f32, f32) -> f32
          %16 = func.call @add_f32(%12, %15) {result_delays = [5]} : (f32, f32) -> f32
          affine.store %16, %10[] {hir.memref_port = 1 : i64} : memref<f32>
        } {II = 10 : i64}
        %11 = affine.load %10[] {hir.memref_port = 0 : i64, result_delays = [0]} : memref<f32>
        affine.store %11, %7[%arg4, %arg5] {hir.memref_port = 1 : i64} : memref<32x32xf32>
      } {II = 60 : i64}
    } {II = 1920 : i64}
    affine.for %arg4 = 0 to 32 {
      affine.for %arg5 = 0 to 32 {
        %11 = affine.load %7[%arg4, %arg5] {hir.memref_port = 0 : i64, result_delays = [1]} : memref<32x32xf32>
        affine.store %11, %6[%arg4, %arg5] {hir.memref_port = 1 : i64} : memref<32x32xf32>
        affine.store %11, %5[%arg4, %arg5] {hir.memref_port = 1 : i64} : memref<32x32xf32>
      } {II = 1 : i64}
    } {II = 36 : i64}
    affine.for %arg4 = 0 to 32 {
      affine.for %arg5 = 0 to 32 {
        %11 = affine.load %2[%arg4, %arg5] {hir.memref_port = 0 : i64, result_delays = [1]} : memref<32x32xf32>
        %12 = func.call @mul_f32(%cst, %11) {result_delays = [4]} : (f32, f32) -> f32
        %13 = affine.load %6[%arg4, %arg5] {hir.memref_port = 0 : i64, result_delays = [1]} : memref<32x32xf32>
        %14 = func.call @mul_f32(%cst_1, %13) {result_delays = [4]} : (f32, f32) -> f32
        %15 = func.call @sub_f32(%12, %14) {result_delays = [5]} : (f32, f32) -> f32
        affine.store %15, %0[%arg4, %arg5] {hir.memref_port = 1 : i64} : memref<32x32xf32>
      } {II = 1 : i64}
    } {II = 36 : i64}
    affine.for %arg4 = 0 to 32 {
      affine.for %arg5 = 0 to 32 {
        %11 = affine.load %1[%arg4, %arg5] {hir.memref_port = 0 : i64, result_delays = [1]} : memref<32x32xf32>
        %12 = affine.load %5[%arg4, %arg5] {hir.memref_port = 0 : i64, result_delays = [1]} : memref<32x32xf32>
        %13 = func.call @sub_f32(%11, %12) {result_delays = [5]} : (f32, f32) -> f32
        %14 = func.call @ugt_f32(%13, %cst_0) {result_delays = [1]} : (f32, f32) -> i8
        %15 = func.call @neg_f32(%13) {result_delays = [0]} : (f32) -> f32
        %16 = func.call @select_f32(%14, %13, %15) {result_delays = [0]} : (i8, f32, f32) -> f32
        %17 = func.call @ugt_f32(%cst_2, %16) {result_delays = [1]} : (f32, f32) -> i8
        %18 = affine.load %0[%arg4, %arg5] {hir.memref_port = 0 : i64, result_delays = [1]} : memref<32x32xf32>
        %19 = func.call @select_f32(%17, %11, %18) {result_delays = [0]} : (i8, f32, f32) -> f32
        affine.store %19, %arg1[%arg4, %arg5] {hir.memref_port = 0 : i64} : memref<32x32xf32>
      } {II = 1 : i64}
    } {II = 36 : i64}
    return
  }
}

