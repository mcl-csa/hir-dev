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
    %10 = memref.alloca() {hir.memref.ports = [{rd_latency = 1 : i64}, {wr_latency = 1 : i64}], mem_kind = "bram"} : memref<32x32xf32>
    %11 = memref.alloca() {hir.memref.ports = [{rd_latency = 1 : i64}, {wr_latency = 1 : i64}], mem_kind = "bram"} : memref<32x32xf32>
    %12 = memref.alloca() {hir.memref.ports = [{rd_latency = 1 : i64}, {wr_latency = 1 : i64}], mem_kind = "bram"} : memref<32x32xf32>
    %13 = memref.alloca() {hir.memref.ports = [{rd_latency = 1 : i64}, {wr_latency = 1 : i64}], mem_kind = "bram"} : memref<32x32xf32>
    %14 = memref.alloca() {hir.memref.ports = [{rd_latency = 1 : i64}, {wr_latency = 1 : i64}], mem_kind = "bram"} : memref<32x32xf32>
    %15 = memref.alloca() {hir.memref.ports = [{rd_latency = 1 : i64}, {wr_latency = 1 : i64}], mem_kind = "bram"} : memref<32x32xf32>
    %16 = memref.alloca() {hir.memref.ports = [{rd_latency = 1 : i64}, {wr_latency = 1 : i64}], mem_kind = "bram"} : memref<32x32xf32>
    %17 = memref.alloca() {hir.memref.ports = [{rd_latency = 1 : i64}, {wr_latency = 1 : i64}], mem_kind = "bram"} : memref<32x32xf32>
    %18 = memref.alloca() {hir.memref.ports = [{rd_latency = 1 : i64}, {wr_latency = 1 : i64}], mem_kind = "bram"} : memref<32x32xf32>
    %19 = memref.alloca() {hir.memref.ports = [{rd_latency = 1 : i64}, {wr_latency = 1 : i64}], mem_kind = "bram"} : memref<32x32xf32>
    affine.for %arg2 = 0 to 32 {
      affine.for %arg3 = 0 to 32 {
        %27 = affine.load %arg1[%arg2, %arg3] {hir.memref_port = 0 : i64, result_delays = [1]} : memref<32x32xf32>
        affine.store %27, %19[%arg2, %arg3] {hir.memref_port = 1 : i64} : memref<32x32xf32>
        affine.store %27, %18[%arg2, %arg3] {hir.memref_port = 1 : i64} : memref<32x32xf32>
      } {II = 1 : i64}
    } {II = 32 : i64}
    %20 = memref.alloca() {hir.memref.ports = [{rd_latency = 0 : i64}, {wr_latency = 1 : i64}], mem_kind = "reg"} : memref<f32>
    %21 = memref.alloca() {hir.memref.ports = [{rd_latency = 1 : i64}, {wr_latency = 1 : i64}], mem_kind = "bram"} : memref<2x4xf32>
    affine.store %cst_2, %21[0, 0] {hir.memref_port = 1 : i64} : memref<2x4xf32>
    affine.store %cst_1, %21[1, 0] {hir.memref_port = 1 : i64} : memref<2x4xf32>
    affine.store %cst_4, %21[0, 1] {hir.memref_port = 1 : i64} : memref<2x4xf32>
    affine.store %cst_3, %21[1, 1] {hir.memref_port = 1 : i64} : memref<2x4xf32>
    affine.store %cst_2, %21[0, 2] {hir.memref_port = 1 : i64} : memref<2x4xf32>
    affine.store %cst_1, %21[1, 2] {hir.memref_port = 1 : i64} : memref<2x4xf32>
    affine.store %cst_0, %20[] {hir.memref_port = 1 : i64} : memref<f32>
    affine.for %arg2 = 1 to 31 {
      affine.for %arg3 = 1 to 31 {
        affine.store %cst_0, %20[] {hir.memref_port = 1 : i64} : memref<f32>
        affine.for %arg4 = 0 to 2 {
          affine.for %arg5 = 0 to 3 {
            %28 = affine.load %20[] {hir.memref_port = 0 : i64, result_delays = [0]} : memref<f32>
            %29 = affine.load %19[%arg2 + %arg4 * 2 - 1, %arg3 + %arg5 - 1] {hir.memref_port = 0 : i64, result_delays = [1]} : memref<32x32xf32>
            %30 = affine.load %21[%arg4, %arg5] {hir.memref_port = 0 : i64, result_delays = [1]} : memref<2x4xf32>
            %31 = func.call @mul_f32(%29, %30) {result_delays = [4]} : (f32, f32) -> f32
            %32 = func.call @add_f32(%28, %31) {result_delays = [5]} : (f32, f32) -> f32
            affine.store %32, %20[] {hir.memref_port = 1 : i64} : memref<f32>
          } {II = 6 : i64}
        } {II = 18 : i64}
        %27 = affine.load %20[] {hir.memref_port = 0 : i64, result_delays = [0]} : memref<f32>
        affine.store %27, %17[%arg2, %arg3] {hir.memref_port = 1 : i64} : memref<32x32xf32>
      } {II = 40 : i64}
    } {II = 1300 : i64}
    affine.for %arg2 = 0 to 32 {
      affine.for %arg3 = 0 to 32 {
        %27 = affine.load %17[%arg2, %arg3] {hir.memref_port = 0 : i64, result_delays = [1]} : memref<32x32xf32>
        affine.store %27, %16[%arg2, %arg3] {hir.memref_port = 1 : i64} : memref<32x32xf32>
        affine.store %27, %15[%arg2, %arg3] {hir.memref_port = 1 : i64} : memref<32x32xf32>
      } {II = 1 : i64}
    } {II = 32 : i64}
    %22 = memref.alloca() {hir.memref.ports = [{rd_latency = 0 : i64}, {wr_latency = 1 : i64}], mem_kind = "reg"} : memref<f32>
    %23 = memref.alloca() {hir.memref.ports = [{rd_latency = 1 : i64}, {wr_latency = 1 : i64}], mem_kind = "bram"} : memref<2x4xf32>
    affine.store %cst_2, %23[0, 0] {hir.memref_port = 1 : i64} : memref<2x4xf32>
    affine.store %cst_1, %23[1, 0] {hir.memref_port = 1 : i64} : memref<2x4xf32>
    affine.store %cst_4, %23[0, 1] {hir.memref_port = 1 : i64} : memref<2x4xf32>
    affine.store %cst_3, %23[1, 1] {hir.memref_port = 1 : i64} : memref<2x4xf32>
    affine.store %cst_2, %23[0, 2] {hir.memref_port = 1 : i64} : memref<2x4xf32>
    affine.store %cst_1, %23[1, 2] {hir.memref_port = 1 : i64} : memref<2x4xf32>
    affine.store %cst_0, %22[] {hir.memref_port = 1 : i64} : memref<f32>
    affine.for %arg2 = 1 to 31 {
      affine.for %arg3 = 1 to 31 {
        affine.store %cst_0, %22[] {hir.memref_port = 1 : i64} : memref<f32>
        affine.for %arg4 = 0 to 2 {
          affine.for %arg5 = 0 to 3 {
            %28 = affine.load %22[] {hir.memref_port = 0 : i64, result_delays = [0]} : memref<f32>
            %29 = affine.load %18[%arg2 + %arg5 - 1, %arg3 + %arg4 * 2 - 1] {hir.memref_port = 0 : i64, result_delays = [1]} : memref<32x32xf32>
            %30 = affine.load %23[%arg4, %arg5] {hir.memref_port = 0 : i64, result_delays = [1]} : memref<2x4xf32>
            %31 = func.call @mul_f32(%29, %30) {result_delays = [4]} : (f32, f32) -> f32
            %32 = func.call @add_f32(%28, %31) {result_delays = [5]} : (f32, f32) -> f32
            affine.store %32, %22[] {hir.memref_port = 1 : i64} : memref<f32>
          } {II = 6 : i64}
        } {II = 18 : i64}
        %27 = affine.load %22[] {hir.memref_port = 0 : i64, result_delays = [0]} : memref<f32>
        affine.store %27, %14[%arg2, %arg3] {hir.memref_port = 1 : i64} : memref<32x32xf32>
      } {II = 40 : i64}
    } {II = 1300 : i64}
    affine.for %arg2 = 0 to 32 {
      affine.for %arg3 = 0 to 32 {
        %27 = affine.load %14[%arg2, %arg3] {hir.memref_port = 0 : i64, result_delays = [1]} : memref<32x32xf32>
        affine.store %27, %13[%arg2, %arg3] {hir.memref_port = 1 : i64} : memref<32x32xf32>
        affine.store %27, %12[%arg2, %arg3] {hir.memref_port = 1 : i64} : memref<32x32xf32>
      } {II = 1 : i64}
    } {II = 32 : i64}
    affine.for %arg2 = 0 to 30 {
      affine.for %arg3 = 0 to 30 {
        %27 = affine.load %16[%arg2 + 1, %arg3 + 1] {hir.memref_port = 0 : i64, result_delays = [1]} : memref<32x32xf32>
        %28 = func.call @mul_f32(%27, %27) {result_delays = [4]} : (f32, f32) -> f32
        affine.store %28, %11[%arg2 + 1, %arg3 + 1] {hir.memref_port = 1 : i64} : memref<32x32xf32>
      } {II = 1 : i64}
    } {II = 32 : i64}
    affine.for %arg2 = 1 to 31 {
      affine.for %arg3 = 1 to 31 {
        %27 = affine.load %13[%arg2, %arg3] {hir.memref_port = 0 : i64, result_delays = [1]} : memref<32x32xf32>
        %28 = func.call @mul_f32(%27, %27) {result_delays = [4]} : (f32, f32) -> f32
        affine.store %28, %10[%arg2, %arg3] {hir.memref_port = 1 : i64} : memref<32x32xf32>
      } {II = 1 : i64}
    } {II = 32 : i64}
    affine.for %arg2 = 1 to 31 {
      affine.for %arg3 = 1 to 31 {
        %27 = affine.load %15[%arg2, %arg3] {hir.memref_port = 0 : i64, result_delays = [1]} : memref<32x32xf32>
        %28 = affine.load %12[%arg2, %arg3] {hir.memref_port = 0 : i64, result_delays = [1]} : memref<32x32xf32>
        %29 = func.call @mul_f32(%27, %28) {result_delays = [4]} : (f32, f32) -> f32
        affine.store %29, %9[%arg2, %arg3] {hir.memref_port = 1 : i64} : memref<32x32xf32>
      } {II = 1 : i64}
    } {II = 32 : i64}
    %24 = memref.alloca() {hir.memref.ports = [{rd_latency = 0 : i64}, {wr_latency = 1 : i64}], mem_kind = "reg"} : memref<f32>
    affine.store %cst_0, %24[] {hir.memref_port = 1 : i64} : memref<f32>
    affine.for %arg2 = 2 to 30 {
      affine.for %arg3 = 2 to 30 {
        affine.store %cst_0, %24[] {hir.memref_port = 1 : i64} : memref<f32>
        affine.for %arg4 = 0 to 3 {
          affine.for %arg5 = 0 to 3 {
            %28 = affine.load %24[] {hir.memref_port = 0 : i64, result_delays = [0]} : memref<f32>
            %29 = affine.load %11[%arg2 + %arg4 - 1, %arg3 + %arg5 - 1] {hir.memref_port = 0 : i64, result_delays = [1]} : memref<32x32xf32>
            %30 = func.call @add_f32(%28, %29) {result_delays = [5]} : (f32, f32) -> f32
            affine.store %30, %24[] {hir.memref_port = 1 : i64} : memref<f32>
          } {II = 6 : i64}
        } {II = 20 : i64}
        %27 = affine.load %24[] {hir.memref_port = 0 : i64, result_delays = [0]} : memref<f32>
        affine.store %27, %8[%arg2, %arg3] {hir.memref_port = 1 : i64} : memref<32x32xf32>
      } {II = 60 : i64}
    } {II = 1800 : i64}
    affine.for %arg2 = 0 to 32 {
      affine.for %arg3 = 0 to 32 {
        %27 = affine.load %8[%arg2, %arg3] {hir.memref_port = 0 : i64, result_delays = [1]} : memref<32x32xf32>
        affine.store %27, %7[%arg2, %arg3] {hir.memref_port = 1 : i64} : memref<32x32xf32>
        affine.store %27, %6[%arg2, %arg3] {hir.memref_port = 1 : i64} : memref<32x32xf32>
      } {II = 1 : i64}
    } {II = 32 : i64}
    %25 = memref.alloca() {hir.memref.ports = [{rd_latency = 0 : i64}, {wr_latency = 1 : i64}], mem_kind = "reg"} : memref<f32>
    affine.store %cst_0, %25[] {hir.memref_port = 1 : i64} : memref<f32>
    affine.for %arg2 = 2 to 30 {
      affine.for %arg3 = 2 to 30 {
        affine.store %cst_0, %25[] {hir.memref_port = 1 : i64} : memref<f32>
        affine.for %arg4 = 0 to 3 {
          affine.for %arg5 = 0 to 3 {
            %28 = affine.load %25[] {hir.memref_port = 0 : i64, result_delays = [0]} : memref<f32>
            %29 = affine.load %10[%arg2 + %arg4 - 1, %arg3 + %arg5 - 1] {hir.memref_port = 0 : i64, result_delays = [1]} : memref<32x32xf32>
            %30 = func.call @add_f32(%28, %29) {result_delays = [5]} : (f32, f32) -> f32
            affine.store %30, %25[] {hir.memref_port = 1 : i64} : memref<f32>
          } {II = 6 : i64}
        } {II = 20 : i64}
        %27 = affine.load %25[] {hir.memref_port = 0 : i64, result_delays = [0]} : memref<f32>
        affine.store %27, %5[%arg2, %arg3] {hir.memref_port = 1 : i64} : memref<32x32xf32>
      } {II = 60 : i64}
    } {II = 1800 : i64}
    affine.for %arg2 = 0 to 32 {
      affine.for %arg3 = 0 to 32 {
        %27 = affine.load %5[%arg2, %arg3] {hir.memref_port = 0 : i64, result_delays = [1]} : memref<32x32xf32>
        affine.store %27, %4[%arg2, %arg3] {hir.memref_port = 1 : i64} : memref<32x32xf32>
        affine.store %27, %3[%arg2, %arg3] {hir.memref_port = 1 : i64} : memref<32x32xf32>
      } {II = 1 : i64}
    } {II = 32 : i64}
    %26 = memref.alloca() {hir.memref.ports = [{rd_latency = 0 : i64}, {wr_latency = 1 : i64}], mem_kind = "reg"} : memref<f32>
    affine.store %cst_0, %26[] {hir.memref_port = 1 : i64} : memref<f32>
    affine.for %arg2 = 2 to 30 {
      affine.for %arg3 = 2 to 30 {
        affine.store %cst_0, %26[] {hir.memref_port = 1 : i64} : memref<f32>
        affine.for %arg4 = 0 to 3 {
          affine.for %arg5 = 0 to 3 {
            %28 = affine.load %26[] {hir.memref_port = 0 : i64, result_delays = [0]} : memref<f32>
            %29 = affine.load %9[%arg2 + %arg4 - 1, %arg3 + %arg5 - 1] {hir.memref_port = 0 : i64, result_delays = [1]} : memref<32x32xf32>
            %30 = func.call @add_f32(%28, %29) {result_delays = [5]} : (f32, f32) -> f32
            affine.store %30, %26[] {hir.memref_port = 1 : i64} : memref<f32>
          } {II = 6 : i64}
        } {II = 20 : i64}
        %27 = affine.load %26[] {hir.memref_port = 0 : i64, result_delays = [0]} : memref<f32>
        affine.store %27, %2[%arg2, %arg3] {hir.memref_port = 1 : i64} : memref<32x32xf32>
      } {II = 60 : i64}
    } {II = 1800 : i64}
    affine.for %arg2 = 2 to 30 {
      affine.for %arg3 = 2 to 30 {
        %27 = affine.load %2[%arg2, %arg3] {hir.memref_port = 0 : i64, result_delays = [1]} : memref<32x32xf32>
        %28 = affine.load %7[%arg2, %arg3] {hir.memref_port = 0 : i64, result_delays = [1]} : memref<32x32xf32>
        %29 = affine.load %4[%arg2, %arg3] {hir.memref_port = 0 : i64, result_delays = [1]} : memref<32x32xf32>
        %30 = func.call @mul_f32(%28, %29) {result_delays = [4]} : (f32, f32) -> f32
        %31 = func.call @mul_f32(%27, %27) {result_delays = [4]} : (f32, f32) -> f32
        %32 = func.call @sub_f32(%30, %31) {result_delays = [5]} : (f32, f32) -> f32
        affine.store %32, %1[%arg2, %arg3] {hir.memref_port = 1 : i64} : memref<32x32xf32>
      } {II = 1 : i64}
    } {II = 32 : i64}
    affine.for %arg2 = 2 to 30 {
      affine.for %arg3 = 2 to 30 {
        %27 = affine.load %6[%arg2, %arg3] {hir.memref_port = 0 : i64, result_delays = [1]} : memref<32x32xf32>
        %28 = affine.load %3[%arg2, %arg3] {hir.memref_port = 0 : i64, result_delays = [1]} : memref<32x32xf32>
        %29 = func.call @add_f32(%27, %28) {result_delays = [5]} : (f32, f32) -> f32
        affine.store %29, %0[%arg2, %arg3] {hir.memref_port = 1 : i64} : memref<32x32xf32>
      } {II = 1 : i64}
    } {II = 32 : i64}
    affine.for %arg2 = 2 to 30 {
      affine.for %arg3 = 2 to 30 {
        %27 = affine.load %0[%arg2, %arg3] {hir.memref_port = 0 : i64, result_delays = [1]} : memref<32x32xf32>
        %28 = affine.load %1[%arg2, %arg3] {hir.memref_port = 0 : i64, result_delays = [1]} : memref<32x32xf32>
        %29 = func.call @mul_f32(%27, %27) {result_delays = [4]} : (f32, f32) -> f32
        %30 = func.call @mul_f32(%cst, %29) {result_delays = [4]} : (f32, f32) -> f32
        %31 = func.call @sub_f32(%28, %30) {result_delays = [5]} : (f32, f32) -> f32
        affine.store %31, %arg0[%arg2, %arg3] {hir.memref_port = 0 : i64} : memref<32x32xf32>
      } {II = 1 : i64}
    } {II = 32 : i64}
    return
  }
}

