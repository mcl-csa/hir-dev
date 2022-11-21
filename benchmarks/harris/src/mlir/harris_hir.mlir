module attributes {hir.hls} {
  func.func private @sub_f32(f32 {hir.delay = 0 : i64}, f32 {hir.delay = 0 : i64}) -> (f32 {hir.delay = 5 : i64}) attributes {argNames = ["a", "b"], hwAccel, llvm.linkage = #llvm.linkage<external>, resultNames = ["out"]}
  func.func private @mul_f32(f32 {hir.delay = 0 : i64}, f32 {hir.delay = 0 : i64}) -> (f32 {hir.delay = 4 : i64}) attributes {argNames = ["a", "b"], hwAccel, llvm.linkage = #llvm.linkage<external>, resultNames = ["out"]}
  func.func private @add_f32(f32 {hir.delay = 0 : i64}, f32 {hir.delay = 0 : i64}) -> (f32 {hir.delay = 5 : i64}) attributes {argNames = ["a", "b"], hwAccel, llvm.linkage = #llvm.linkage<external>, resultNames = ["out"]}
  func.func @harris_hir(%arg0: memref<32x32xf32> {hir.memref.ports = [{wr_latency = 1 : i64}]}, %arg1: memref<32x32xf32> {hir.memref.ports = [{rd_latency = 1 : i64}]}) attributes {argNames = ["harris", "img"], hwAccel, llvm.linkage = #llvm.linkage<external>, resultNames = []} {
    %cst = arith.constant 4.000000e-02 : f32
    %cst_0 = arith.constant 0.000000e+00 : f32
    %cst_1 = arith.constant 0.0833333358 : f32
    %cst_2 = arith.constant -0.0833333358 : f32
    %cst_3 = arith.constant 0.166666672 : f32
    %cst_4 = arith.constant -0.166666672 : f32
    %0 = memref.alloca() {hir.memref.ports = [{rd_latency = 1 : i64}, {wr_latency = 1 : i64}], mem_kind = "bram"} : memref<32x32xf32>
    %1 = memref.alloca() {hir.memref.ports = [{rd_latency = 1 : i64}, {wr_latency = 1 : i64}], mem_kind = "bram"} : memref<32x32xf32>
    %2 = memref.alloca() {hir.memref.ports = [{rd_latency = 1 : i64}, {wr_latency = 1 : i64}], mem_kind = "bram"} : memref<32x32xf32>
    %3 = memref.alloca() {hir.memref.ports = [{rd_latency = 1 : i64}, {wr_latency = 1 : i64}], mem_kind = "bram"} : memref<32x32xf32>
    %4 = memref.alloca() {hir.memref.ports = [{rd_latency = 1 : i64}, {wr_latency = 1 : i64}], mem_kind = "bram"} : memref<32x32xf32>
    %5 = memref.alloca() {hir.memref.ports = [{rd_latency = 1 : i64}, {wr_latency = 1 : i64}], mem_kind = "bram"} : memref<32x32xf32>
    %6 = memref.alloca() {hir.memref.ports = [{rd_latency = 1 : i64}, {wr_latency = 1 : i64}], mem_kind = "bram"} : memref<32x32xf32>
    %7 = memref.alloca() {hir.memref.ports = [{rd_latency = 1 : i64}, {wr_latency = 1 : i64}], mem_kind = "bram"} : memref<32x32xf32>
    %8 = memref.alloca() {hir.memref.ports = [{rd_latency = 1 : i64}, {wr_latency = 1 : i64}], mem_kind = "bram"} : memref<32x32xf32>
    %9 = memref.alloca() {hir.memref.ports = [{rd_latency = 1 : i64}, {wr_latency = 1 : i64}], mem_kind = "bram"} : memref<32x32xf32>
    %10 = memref.alloca() {hir.memref.ports = [{rd_latency = 0 : i64}, {wr_latency = 1 : i64}], mem_kind = "reg"} : memref<f32>
    %11 = memref.alloca() {hir.memref.ports = [{rd_latency = 1 : i64}, {wr_latency = 1 : i64}], mem_kind = "bram"} : memref<2x4xf32>
    affine.store %cst_2, %11[0, 0] {hir.memref_port = 1 : i64} : memref<2x4xf32>
    affine.store %cst_1, %11[1, 0] {hir.memref_port = 1 : i64} : memref<2x4xf32>
    affine.store %cst_4, %11[0, 1] {hir.memref_port = 1 : i64} : memref<2x4xf32>
    affine.store %cst_3, %11[1, 1] {hir.memref_port = 1 : i64} : memref<2x4xf32>
    affine.store %cst_2, %11[0, 2] {hir.memref_port = 1 : i64} : memref<2x4xf32>
    affine.store %cst_1, %11[1, 2] {hir.memref_port = 1 : i64} : memref<2x4xf32>
    affine.store %cst_0, %10[] {hir.memref_port = 1 : i64} : memref<f32>
    affine.for %arg2 = 1 to 31 {
      affine.for %arg3 = 1 to 31 {
        affine.store %cst_0, %10[] {hir.memref_port = 1 : i64} : memref<f32>
        affine.for %arg4 = 0 to 2 {
          affine.for %arg5 = 0 to 3 {
            %18 = affine.load %10[] {hir.memref_port = 0 : i64, result_delays = [0]} : memref<f32>
            %19 = affine.load %arg1[%arg2 + %arg4 * 2 - 1, %arg3 + %arg5 - 1] {hir.memref_port = 0 : i64, result_delays = [1]} : memref<32x32xf32>
            %20 = affine.load %11[%arg4, %arg5] {hir.memref_port = 0 : i64, result_delays = [1]} : memref<2x4xf32>
            %21 = func.call @mul_f32(%19, %20) {result_delays = [4]} : (f32, f32) -> f32
            %22 = func.call @add_f32(%18, %21) {result_delays = [5]} : (f32, f32) -> f32
            affine.store %22, %10[] {hir.memref_port = 1 : i64} : memref<f32>
          } {II = 6 : i64}
        } {II = 18 : i64}
        %17 = affine.load %10[] {hir.memref_port = 0 : i64, result_delays = [0]} : memref<f32>
        affine.store %17, %9[%arg2, %arg3] {hir.memref_port = 1 : i64} : memref<32x32xf32>
      } {II = 40 : i64}
    } {II = 1300 : i64}
    %12 = memref.alloca() {hir.memref.ports = [{rd_latency = 0 : i64}, {wr_latency = 1 : i64}], mem_kind = "reg"} : memref<f32>
    %13 = memref.alloca() {hir.memref.ports = [{rd_latency = 1 : i64}, {wr_latency = 1 : i64}], mem_kind = "bram"} : memref<2x4xf32>
    affine.store %cst_2, %13[0, 0] {hir.memref_port = 1 : i64} : memref<2x4xf32>
    affine.store %cst_1, %13[1, 0] {hir.memref_port = 1 : i64} : memref<2x4xf32>
    affine.store %cst_4, %13[0, 1] {hir.memref_port = 1 : i64} : memref<2x4xf32>
    affine.store %cst_3, %13[1, 1] {hir.memref_port = 1 : i64} : memref<2x4xf32>
    affine.store %cst_2, %13[0, 2] {hir.memref_port = 1 : i64} : memref<2x4xf32>
    affine.store %cst_1, %13[1, 2] {hir.memref_port = 1 : i64} : memref<2x4xf32>
    affine.store %cst_0, %12[] {hir.memref_port = 1 : i64} : memref<f32>
    affine.for %arg2 = 1 to 31 {
      affine.for %arg3 = 1 to 31 {
        affine.store %cst_0, %12[] {hir.memref_port = 1 : i64} : memref<f32>
        affine.for %arg4 = 0 to 2 {
          affine.for %arg5 = 0 to 3 {
            %18 = affine.load %12[] {hir.memref_port = 0 : i64, result_delays = [0]} : memref<f32>
            %19 = affine.load %arg1[%arg2 + %arg5 - 1, %arg3 + %arg4 * 2 - 1] {hir.memref_port = 0 : i64, result_delays = [1]} : memref<32x32xf32>
            %20 = affine.load %13[%arg4, %arg5] {hir.memref_port = 0 : i64, result_delays = [1]} : memref<2x4xf32>
            %21 = func.call @mul_f32(%19, %20) {result_delays = [4]} : (f32, f32) -> f32
            %22 = func.call @add_f32(%18, %21) {result_delays = [5]} : (f32, f32) -> f32
            affine.store %22, %12[] {hir.memref_port = 1 : i64} : memref<f32>
          } {II = 6 : i64}
        } {II = 18 : i64}
        %17 = affine.load %12[] {hir.memref_port = 0 : i64, result_delays = [0]} : memref<f32>
        affine.store %17, %8[%arg2, %arg3] {hir.memref_port = 1 : i64} : memref<32x32xf32>
      } {II = 40 : i64}
    } {II = 1300 : i64}
    affine.for %arg2 = 0 to 30 {
      affine.for %arg3 = 0 to 30 {
        %17 = affine.load %9[%arg2 + 1, %arg3 + 1] {hir.memref_port = 0 : i64, result_delays = [1]} : memref<32x32xf32>
        %18 = func.call @mul_f32(%17, %17) {result_delays = [4]} : (f32, f32) -> f32
        affine.store %18, %7[%arg2 + 1, %arg3 + 1] {hir.memref_port = 1 : i64} : memref<32x32xf32>
      } {II = 1 : i64}
    } {II = 32 : i64}
    affine.for %arg2 = 1 to 31 {
      affine.for %arg3 = 1 to 31 {
        %17 = affine.load %8[%arg2, %arg3] {hir.memref_port = 0 : i64, result_delays = [1]} : memref<32x32xf32>
        %18 = func.call @mul_f32(%17, %17) {result_delays = [4]} : (f32, f32) -> f32
        affine.store %18, %6[%arg2, %arg3] {hir.memref_port = 1 : i64} : memref<32x32xf32>
      } {II = 1 : i64}
    } {II = 32 : i64}
    affine.for %arg2 = 1 to 31 {
      affine.for %arg3 = 1 to 31 {
        %17 = affine.load %9[%arg2, %arg3] {hir.memref_port = 0 : i64, result_delays = [1]} : memref<32x32xf32>
        %18 = affine.load %8[%arg2, %arg3] {hir.memref_port = 0 : i64, result_delays = [1]} : memref<32x32xf32>
        %19 = func.call @mul_f32(%17, %18) {result_delays = [4]} : (f32, f32) -> f32
        affine.store %19, %5[%arg2, %arg3] {hir.memref_port = 1 : i64} : memref<32x32xf32>
      } {II = 1 : i64}
    } {II = 32 : i64}
    %14 = memref.alloca() {hir.memref.ports = [{rd_latency = 0 : i64}, {wr_latency = 1 : i64}], mem_kind = "reg"} : memref<f32>
    affine.store %cst_0, %14[] {hir.memref_port = 1 : i64} : memref<f32>
    affine.for %arg2 = 2 to 30 {
      affine.for %arg3 = 2 to 30 {
        affine.store %cst_0, %14[] {hir.memref_port = 1 : i64} : memref<f32>
        affine.for %arg4 = 0 to 3 {
          affine.for %arg5 = 0 to 3 {
            %18 = affine.load %14[] {hir.memref_port = 0 : i64, result_delays = [0]} : memref<f32>
            %19 = affine.load %7[%arg2 + %arg4 - 1, %arg3 + %arg5 - 1] {hir.memref_port = 0 : i64, result_delays = [1]} : memref<32x32xf32>
            %20 = func.call @add_f32(%18, %19) {result_delays = [5]} : (f32, f32) -> f32
            affine.store %20, %14[] {hir.memref_port = 1 : i64} : memref<f32>
          } {II = 6 : i64}
        } {II = 20 : i64}
        %17 = affine.load %14[] {hir.memref_port = 0 : i64, result_delays = [0]} : memref<f32>
        affine.store %17, %4[%arg2, %arg3] {hir.memref_port = 1 : i64} : memref<32x32xf32>
      } {II = 60 : i64}
    } {II = 1800 : i64}
    %15 = memref.alloca() {hir.memref.ports = [{rd_latency = 0 : i64}, {wr_latency = 1 : i64}], mem_kind = "reg"} : memref<f32>
    affine.store %cst_0, %15[] {hir.memref_port = 1 : i64} : memref<f32>
    affine.for %arg2 = 2 to 30 {
      affine.for %arg3 = 2 to 30 {
        affine.store %cst_0, %15[] {hir.memref_port = 1 : i64} : memref<f32>
        affine.for %arg4 = 0 to 3 {
          affine.for %arg5 = 0 to 3 {
            %18 = affine.load %15[] {hir.memref_port = 0 : i64, result_delays = [0]} : memref<f32>
            %19 = affine.load %6[%arg2 + %arg4 - 1, %arg3 + %arg5 - 1] {hir.memref_port = 0 : i64, result_delays = [1]} : memref<32x32xf32>
            %20 = func.call @add_f32(%18, %19) {result_delays = [5]} : (f32, f32) -> f32
            affine.store %20, %15[] {hir.memref_port = 1 : i64} : memref<f32>
          } {II = 6 : i64}
        } {II = 20 : i64}
        %17 = affine.load %15[] {hir.memref_port = 0 : i64, result_delays = [0]} : memref<f32>
        affine.store %17, %3[%arg2, %arg3] {hir.memref_port = 1 : i64} : memref<32x32xf32>
      } {II = 60 : i64}
    } {II = 1800 : i64}
    %16 = memref.alloca() {hir.memref.ports = [{rd_latency = 0 : i64}, {wr_latency = 1 : i64}], mem_kind = "reg"} : memref<f32>
    affine.store %cst_0, %16[] {hir.memref_port = 1 : i64} : memref<f32>
    affine.for %arg2 = 2 to 30 {
      affine.for %arg3 = 2 to 30 {
        affine.store %cst_0, %16[] {hir.memref_port = 1 : i64} : memref<f32>
        affine.for %arg4 = 0 to 3 {
          affine.for %arg5 = 0 to 3 {
            %18 = affine.load %16[] {hir.memref_port = 0 : i64, result_delays = [0]} : memref<f32>
            %19 = affine.load %5[%arg2 + %arg4 - 1, %arg3 + %arg5 - 1] {hir.memref_port = 0 : i64, result_delays = [1]} : memref<32x32xf32>
            %20 = func.call @add_f32(%18, %19) {result_delays = [5]} : (f32, f32) -> f32
            affine.store %20, %16[] {hir.memref_port = 1 : i64} : memref<f32>
          } {II = 6 : i64}
        } {II = 20 : i64}
        %17 = affine.load %16[] {hir.memref_port = 0 : i64, result_delays = [0]} : memref<f32>
        affine.store %17, %2[%arg2, %arg3] {hir.memref_port = 1 : i64} : memref<32x32xf32>
      } {II = 60 : i64}
    } {II = 1800 : i64}
    affine.for %arg2 = 2 to 30 {
      affine.for %arg3 = 2 to 30 {
        %17 = affine.load %2[%arg2, %arg3] {hir.memref_port = 0 : i64, result_delays = [1]} : memref<32x32xf32>
        %18 = affine.load %4[%arg2, %arg3] {hir.memref_port = 0 : i64, result_delays = [1]} : memref<32x32xf32>
        %19 = affine.load %3[%arg2, %arg3] {hir.memref_port = 0 : i64, result_delays = [1]} : memref<32x32xf32>
        %20 = func.call @mul_f32(%18, %19) {result_delays = [4]} : (f32, f32) -> f32
        %21 = func.call @mul_f32(%17, %17) {result_delays = [4]} : (f32, f32) -> f32
        %22 = func.call @sub_f32(%20, %21) {result_delays = [5]} : (f32, f32) -> f32
        affine.store %22, %1[%arg2, %arg3] {hir.memref_port = 1 : i64} : memref<32x32xf32>
      } {II = 1 : i64}
    } {II = 32 : i64}
    affine.for %arg2 = 2 to 30 {
      affine.for %arg3 = 2 to 30 {
        %17 = affine.load %4[%arg2, %arg3] {hir.memref_port = 0 : i64, result_delays = [1]} : memref<32x32xf32>
        %18 = affine.load %3[%arg2, %arg3] {hir.memref_port = 0 : i64, result_delays = [1]} : memref<32x32xf32>
        %19 = func.call @add_f32(%17, %18) {result_delays = [5]} : (f32, f32) -> f32
        affine.store %19, %0[%arg2, %arg3] {hir.memref_port = 1 : i64} : memref<32x32xf32>
      } {II = 1 : i64}
    } {II = 32 : i64}
    affine.for %arg2 = 2 to 30 {
      affine.for %arg3 = 2 to 30 {
        %17 = affine.load %0[%arg2, %arg3] {hir.memref_port = 0 : i64, result_delays = [1]} : memref<32x32xf32>
        %18 = affine.load %1[%arg2, %arg3] {hir.memref_port = 0 : i64, result_delays = [1]} : memref<32x32xf32>
        %19 = func.call @mul_f32(%17, %17) {result_delays = [4]} : (f32, f32) -> f32
        %20 = func.call @mul_f32(%cst, %19) {result_delays = [4]} : (f32, f32) -> f32
        %21 = func.call @sub_f32(%18, %20) {result_delays = [5]} : (f32, f32) -> f32
        affine.store %21, %arg0[%arg2, %arg3] {hir.memref_port = 0 : i64} : memref<32x32xf32>
      } {II = 1 : i64}
    } {II = 32 : i64}
    return
  }
}

