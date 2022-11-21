module attributes {hir.hls} {
  func.func private @div_f32(f32 {hir.delay = 0 : i64}, f32 {hir.delay = 0 : i64}) -> (f32 {hir.delay = 14 : i64}) attributes {argNames = ["a", "b"], hwAccel, llvm.linkage = #llvm.linkage<external>, resultNames = ["out"]}
  func.func private @sub_f32(f32 {hir.delay = 0 : i64}, f32 {hir.delay = 0 : i64}) -> (f32 {hir.delay = 5 : i64}) attributes {argNames = ["a", "b"], hwAccel, llvm.linkage = #llvm.linkage<external>, resultNames = ["out"]}
  func.func private @mul_f32(f32 {hir.delay = 0 : i64}, f32 {hir.delay = 0 : i64}) -> (f32 {hir.delay = 4 : i64}) attributes {argNames = ["a", "b"], hwAccel, llvm.linkage = #llvm.linkage<external>, resultNames = ["out"]}
  func.func private @add_f32(f32 {hir.delay = 0 : i64}, f32 {hir.delay = 0 : i64}) -> (f32 {hir.delay = 5 : i64}) attributes {argNames = ["a", "b"], hwAccel, llvm.linkage = #llvm.linkage<external>, resultNames = ["out"]}
  func.func @optical_flow_hir(%arg0: memref<32x32x2xf32> {hir.memref.ports = [{wr_latency = 1 : i64}]}, %arg1: memref<32x32xf32> {hir.memref.ports = [{rd_latency = 1 : i64}]}, %arg2: memref<32x32xf32> {hir.memref.ports = [{rd_latency = 1 : i64}]}) attributes {argNames = ["flow", "img", "prev"], hwAccel, llvm.linkage = #llvm.linkage<external>, resultNames = []} {
    %cst = arith.constant 1.000000e+00 : f32
    %cst_0 = arith.constant 9.99999974E-6 : f32
    %cst_1 = arith.constant 0.000000e+00 : f32
    %cst_2 = arith.constant 0.0833333358 : f32
    %cst_3 = arith.constant -0.0833333358 : f32
    %cst_4 = arith.constant 0.166666672 : f32
    %cst_5 = arith.constant -0.166666672 : f32
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
    %14 = memref.alloca() {hir.memref.ports = [{rd_latency = 0 : i64}, {wr_latency = 1 : i64}], mem_kind = "reg"} : memref<f32>
    %15 = memref.alloca() {hir.memref.ports = [{rd_latency = 1 : i64}, {wr_latency = 1 : i64}], mem_kind = "bram"} : memref<2x4xf32>
    affine.store %cst_1, %14[] {hir.memref_port = 1 : i64} : memref<f32>
    affine.store %cst_3, %15[0, 0] {hir.memref_port = 1 : i64} : memref<2x4xf32>
    affine.store %cst_2, %15[1, 0] {hir.memref_port = 1 : i64} : memref<2x4xf32>
    affine.store %cst_5, %15[0, 1] {hir.memref_port = 1 : i64} : memref<2x4xf32>
    affine.store %cst_4, %15[1, 1] {hir.memref_port = 1 : i64} : memref<2x4xf32>
    affine.store %cst_3, %15[0, 2] {hir.memref_port = 1 : i64} : memref<2x4xf32>
    affine.store %cst_2, %15[1, 2] {hir.memref_port = 1 : i64} : memref<2x4xf32>
    affine.for %arg3 = 1 to 31 {
      affine.for %arg4 = 1 to 31 {
        affine.store %cst_1, %14[] {hir.memref_port = 1 : i64} : memref<f32>
        affine.for %arg5 = 0 to 2 {
          affine.for %arg6 = 0 to 3 {
            %24 = affine.load %14[] {hir.memref_port = 0 : i64, result_delays = [0]} : memref<f32>
            %25 = affine.load %arg1[%arg3 + %arg5 * 2 - 1, %arg4 + %arg6 - 1] {hir.memref_port = 0 : i64, result_delays = [1]} : memref<32x32xf32>
            %26 = affine.load %15[%arg5, %arg6] {hir.memref_port = 0 : i64, result_delays = [1]} : memref<2x4xf32>
            %27 = func.call @mul_f32(%25, %26) {result_delays = [4]} : (f32, f32) -> f32
            %28 = func.call @add_f32(%24, %27) {result_delays = [5]} : (f32, f32) -> f32
            affine.store %28, %14[] {hir.memref_port = 1 : i64} : memref<f32>
          } {II = 6 : i64}
        } {II = 18 : i64}
        %23 = affine.load %14[] {hir.memref_port = 0 : i64, result_delays = [0]} : memref<f32>
        affine.store %23, %13[%arg3, %arg4] {hir.memref_port = 1 : i64} : memref<32x32xf32>
      } {II = 40 : i64}
    } {II = 1300 : i64}
    %16 = memref.alloca() {hir.memref.ports = [{rd_latency = 0 : i64}, {wr_latency = 1 : i64}], mem_kind = "reg"} : memref<f32>
    %17 = memref.alloca() {hir.memref.ports = [{rd_latency = 1 : i64}, {wr_latency = 1 : i64}], mem_kind = "bram"} : memref<2x4xf32>
    affine.store %cst_1, %16[] {hir.memref_port = 1 : i64} : memref<f32>
    affine.store %cst_3, %17[0, 0] {hir.memref_port = 1 : i64} : memref<2x4xf32>
    affine.store %cst_2, %17[1, 0] {hir.memref_port = 1 : i64} : memref<2x4xf32>
    affine.store %cst_5, %17[0, 1] {hir.memref_port = 1 : i64} : memref<2x4xf32>
    affine.store %cst_4, %17[1, 1] {hir.memref_port = 1 : i64} : memref<2x4xf32>
    affine.store %cst_3, %17[0, 2] {hir.memref_port = 1 : i64} : memref<2x4xf32>
    affine.store %cst_2, %17[1, 2] {hir.memref_port = 1 : i64} : memref<2x4xf32>
    affine.for %arg3 = 1 to 31 {
      affine.for %arg4 = 1 to 31 {
        affine.store %cst_1, %16[] {hir.memref_port = 1 : i64} : memref<f32>
        affine.for %arg5 = 0 to 2 {
          affine.for %arg6 = 0 to 3 {
            %24 = affine.load %arg1[%arg3 + %arg6 - 1, %arg4 + %arg5 * 2 - 1] {hir.memref_port = 0 : i64, result_delays = [1]} : memref<32x32xf32>
            %25 = affine.load %17[%arg5, %arg6] {hir.memref_port = 0 : i64, result_delays = [1]} : memref<2x4xf32>
            %26 = func.call @mul_f32(%24, %25) {result_delays = [4]} : (f32, f32) -> f32
            %27 = affine.load %16[] {hir.memref_port = 0 : i64, result_delays = [0]} : memref<f32>
            %28 = func.call @add_f32(%27, %26) {result_delays = [5]} : (f32, f32) -> f32
            affine.store %28, %16[] {hir.memref_port = 1 : i64} : memref<f32>
          } {II = 6 : i64}
        } {II = 18 : i64}
        %23 = affine.load %16[] {hir.memref_port = 0 : i64, result_delays = [0]} : memref<f32>
        affine.store %23, %12[%arg3, %arg4] {hir.memref_port = 1 : i64} : memref<32x32xf32>
      } {II = 40 : i64}
    } {II = 1210 : i64}
    affine.for %arg3 = 1 to 31 {
      affine.for %arg4 = 1 to 31 {
        %23 = affine.load %13[%arg3, %arg4] {hir.memref_port = 0 : i64, result_delays = [1]} : memref<32x32xf32>
        %24 = func.call @mul_f32(%23, %23) {result_delays = [4]} : (f32, f32) -> f32
        affine.store %24, %11[%arg3, %arg4] {hir.memref_port = 1 : i64} : memref<32x32xf32>
      } {II = 1 : i64}
    } {II = 36 : i64}
    affine.for %arg3 = 1 to 31 {
      affine.for %arg4 = 1 to 31 {
        %23 = affine.load %12[%arg3, %arg4] {hir.memref_port = 0 : i64, result_delays = [1]} : memref<32x32xf32>
        %24 = func.call @mul_f32(%23, %23) {result_delays = [4]} : (f32, f32) -> f32
        affine.store %24, %10[%arg3, %arg4] {hir.memref_port = 1 : i64} : memref<32x32xf32>
      } {II = 1 : i64}
    } {II = 36 : i64}
    affine.for %arg3 = 1 to 31 {
      affine.for %arg4 = 1 to 31 {
        %23 = affine.load %13[%arg3, %arg4] {hir.memref_port = 0 : i64, result_delays = [1]} : memref<32x32xf32>
        %24 = affine.load %12[%arg3, %arg4] {hir.memref_port = 0 : i64, result_delays = [1]} : memref<32x32xf32>
        %25 = func.call @mul_f32(%23, %24) {result_delays = [4]} : (f32, f32) -> f32
        affine.store %25, %9[%arg3, %arg4] {hir.memref_port = 1 : i64} : memref<32x32xf32>
      } {II = 1 : i64}
    } {II = 36 : i64}
    %18 = memref.alloca() {hir.memref.ports = [{rd_latency = 0 : i64}, {wr_latency = 1 : i64}], mem_kind = "reg"} : memref<f32>
    affine.store %cst_1, %18[] {hir.memref_port = 1 : i64} : memref<f32>
    affine.for %arg3 = 2 to 30 {
      affine.for %arg4 = 2 to 30 {
        affine.store %cst_1, %18[] {hir.memref_port = 1 : i64} : memref<f32>
        affine.for %arg5 = 0 to 3 {
          affine.for %arg6 = 0 to 3 {
            %24 = affine.load %18[] {hir.memref_port = 0 : i64, result_delays = [0]} : memref<f32>
            %25 = affine.load %11[%arg3 + %arg5 - 1, %arg4 + %arg6 - 1] {hir.memref_port = 0 : i64, result_delays = [1]} : memref<32x32xf32>
            %26 = func.call @add_f32(%24, %25) {result_delays = [5]} : (f32, f32) -> f32
            affine.store %26, %18[] {hir.memref_port = 1 : i64} : memref<f32>
          } {II = 6 : i64}
        } {II = 20 : i64}
        %23 = affine.load %18[] {hir.memref_port = 0 : i64, result_delays = [0]} : memref<f32>
        affine.store %23, %8[%arg3, %arg4] {hir.memref_port = 1 : i64} : memref<32x32xf32>
      } {II = 60 : i64}
    } {II = 1800 : i64}
    %19 = memref.alloca() {hir.memref.ports = [{rd_latency = 0 : i64}, {wr_latency = 1 : i64}], mem_kind = "reg"} : memref<f32>
    affine.store %cst_1, %19[] {hir.memref_port = 1 : i64} : memref<f32>
    affine.for %arg3 = 2 to 30 {
      affine.for %arg4 = 2 to 30 {
        affine.store %cst_1, %19[] {hir.memref_port = 1 : i64} : memref<f32>
        affine.for %arg5 = 0 to 3 {
          affine.for %arg6 = 0 to 3 {
            %24 = affine.load %19[] {hir.memref_port = 0 : i64, result_delays = [0]} : memref<f32>
            %25 = affine.load %10[%arg3 + %arg5 - 1, %arg4 + %arg6 - 1] {hir.memref_port = 0 : i64, result_delays = [1]} : memref<32x32xf32>
            %26 = func.call @add_f32(%24, %25) {result_delays = [5]} : (f32, f32) -> f32
            affine.store %26, %19[] {hir.memref_port = 1 : i64} : memref<f32>
          } {II = 6 : i64}
        } {II = 20 : i64}
        %23 = affine.load %19[] {hir.memref_port = 0 : i64, result_delays = [0]} : memref<f32>
        affine.store %23, %7[%arg3, %arg4] {hir.memref_port = 1 : i64} : memref<32x32xf32>
      } {II = 60 : i64}
    } {II = 1800 : i64}
    %20 = memref.alloca() {hir.memref.ports = [{rd_latency = 0 : i64}, {wr_latency = 1 : i64}], mem_kind = "reg"} : memref<f32>
    affine.store %cst_1, %20[] {hir.memref_port = 1 : i64} : memref<f32>
    affine.for %arg3 = 2 to 30 {
      affine.for %arg4 = 2 to 30 {
        affine.store %cst_1, %20[] {hir.memref_port = 1 : i64} : memref<f32>
        affine.for %arg5 = 0 to 3 {
          affine.for %arg6 = 0 to 3 {
            %24 = affine.load %20[] {hir.memref_port = 0 : i64, result_delays = [0]} : memref<f32>
            %25 = affine.load %9[%arg3 + %arg5 - 1, %arg4 + %arg6 - 1] {hir.memref_port = 0 : i64, result_delays = [1]} : memref<32x32xf32>
            %26 = func.call @add_f32(%24, %25) {result_delays = [5]} : (f32, f32) -> f32
            affine.store %26, %20[] {hir.memref_port = 1 : i64} : memref<f32>
          } {II = 6 : i64}
        } {II = 20 : i64}
        %23 = affine.load %20[] {hir.memref_port = 0 : i64, result_delays = [0]} : memref<f32>
        affine.store %23, %6[%arg3, %arg4] {hir.memref_port = 1 : i64} : memref<32x32xf32>
      } {II = 60 : i64}
    } {II = 1800 : i64}
    affine.for %arg3 = 2 to 30 {
      affine.for %arg4 = 2 to 30 {
        %23 = affine.load %6[%arg3, %arg4] {hir.memref_port = 0 : i64, result_delays = [1]} : memref<32x32xf32>
        %24 = affine.load %8[%arg3, %arg4] {hir.memref_port = 0 : i64, result_delays = [1]} : memref<32x32xf32>
        %25 = affine.load %7[%arg3, %arg4] {hir.memref_port = 0 : i64, result_delays = [1]} : memref<32x32xf32>
        %26 = func.call @mul_f32(%24, %25) {result_delays = [4]} : (f32, f32) -> f32
        %27 = func.call @mul_f32(%23, %23) {result_delays = [4]} : (f32, f32) -> f32
        %28 = func.call @sub_f32(%26, %27) {result_delays = [5]} : (f32, f32) -> f32
        %29 = func.call @add_f32(%28, %cst_0) {result_delays = [5]} : (f32, f32) -> f32
        affine.store %29, %0[%arg3, %arg4] {hir.memref_port = 1 : i64} : memref<32x32xf32>
      } {II = 1 : i64}
    } {II = 36 : i64}
    affine.for %arg3 = 1 to 31 {
      affine.for %arg4 = 1 to 31 {
        %23 = affine.load %arg1[%arg3, %arg4] {hir.memref_port = 0 : i64, result_delays = [1]} : memref<32x32xf32>
        %24 = affine.load %arg2[%arg3, %arg4] {hir.memref_port = 0 : i64, result_delays = [1]} : memref<32x32xf32>
        %25 = func.call @sub_f32(%23, %24) {result_delays = [5]} : (f32, f32) -> f32
        affine.store %25, %5[%arg3, %arg4] {hir.memref_port = 1 : i64} : memref<32x32xf32>
      } {II = 1 : i64}
    } {II = 36 : i64}
    affine.for %arg3 = 1 to 31 {
      affine.for %arg4 = 1 to 31 {
        %23 = affine.load %13[%arg3, %arg4] {hir.memref_port = 0 : i64, result_delays = [1]} : memref<32x32xf32>
        %24 = affine.load %5[%arg3, %arg4] {hir.memref_port = 0 : i64, result_delays = [1]} : memref<32x32xf32>
        %25 = func.call @mul_f32(%23, %24) {result_delays = [4]} : (f32, f32) -> f32
        affine.store %25, %4[%arg3, %arg4] {hir.memref_port = 1 : i64} : memref<32x32xf32>
      } {II = 1 : i64}
    } {II = 36 : i64}
    affine.for %arg3 = 1 to 31 {
      affine.for %arg4 = 1 to 31 {
        %23 = affine.load %12[%arg3, %arg4] {hir.memref_port = 0 : i64, result_delays = [1]} : memref<32x32xf32>
        %24 = affine.load %5[%arg3, %arg4] {hir.memref_port = 0 : i64, result_delays = [1]} : memref<32x32xf32>
        %25 = func.call @mul_f32(%23, %24) {result_delays = [4]} : (f32, f32) -> f32
        affine.store %25, %3[%arg3, %arg4] {hir.memref_port = 1 : i64} : memref<32x32xf32>
      } {II = 1 : i64}
    } {II = 36 : i64}
    %21 = memref.alloca() {hir.memref.ports = [{rd_latency = 0 : i64}, {wr_latency = 1 : i64}], mem_kind = "reg"} : memref<f32>
    affine.store %cst_1, %21[] {hir.memref_port = 1 : i64} : memref<f32>
    affine.for %arg3 = 2 to 30 {
      affine.for %arg4 = 2 to 30 {
        affine.store %cst_1, %21[] {hir.memref_port = 1 : i64} : memref<f32>
        affine.for %arg5 = 0 to 3 {
          affine.for %arg6 = 0 to 3 {
            %24 = affine.load %21[] {hir.memref_port = 0 : i64, result_delays = [0]} : memref<f32>
            %25 = affine.load %4[%arg3 + %arg5 - 1, %arg4 + %arg6 - 1] {hir.memref_port = 0 : i64, result_delays = [1]} : memref<32x32xf32>
            %26 = func.call @add_f32(%24, %25) {result_delays = [5]} : (f32, f32) -> f32
            affine.store %26, %21[] {hir.memref_port = 1 : i64} : memref<f32>
          } {II = 6 : i64}
        } {II = 20 : i64}
        %23 = affine.load %21[] {hir.memref_port = 0 : i64, result_delays = [0]} : memref<f32>
        affine.store %23, %2[%arg3, %arg4] {hir.memref_port = 1 : i64} : memref<32x32xf32>
      } {II = 60 : i64}
    } {II = 1800 : i64}
    %22 = memref.alloca() {hir.memref.ports = [{rd_latency = 0 : i64}, {wr_latency = 1 : i64}], mem_kind = "reg"} : memref<f32>
    affine.store %cst_1, %22[] {hir.memref_port = 1 : i64} : memref<f32>
    affine.for %arg3 = 2 to 30 {
      affine.for %arg4 = 2 to 30 {
        affine.store %cst_1, %22[] {hir.memref_port = 1 : i64} : memref<f32>
        affine.for %arg5 = 0 to 3 {
          affine.for %arg6 = 0 to 3 {
            %24 = affine.load %22[] {hir.memref_port = 0 : i64, result_delays = [0]} : memref<f32>
            %25 = affine.load %3[%arg3 + %arg5 - 1, %arg4 + %arg6 - 1] {hir.memref_port = 0 : i64, result_delays = [1]} : memref<32x32xf32>
            %26 = func.call @add_f32(%24, %25) {result_delays = [5]} : (f32, f32) -> f32
            affine.store %26, %22[] {hir.memref_port = 1 : i64} : memref<f32>
          } {II = 6 : i64}
        } {II = 20 : i64}
        %23 = affine.load %22[] {hir.memref_port = 0 : i64, result_delays = [0]} : memref<f32>
        affine.store %23, %1[%arg3, %arg4] {hir.memref_port = 1 : i64} : memref<32x32xf32>
      } {II = 60 : i64}
    } {II = 1800 : i64}
    affine.for %arg3 = 4 to 28 {
      affine.for %arg4 = 4 to 28 {
        %23 = affine.load %2[%arg3, %arg4] {hir.memref_port = 0 : i64, result_delays = [1]} : memref<32x32xf32>
        %24 = affine.load %1[%arg3, %arg4] {hir.memref_port = 0 : i64, result_delays = [1]} : memref<32x32xf32>
        %25 = affine.load %0[%arg3, %arg4] {hir.memref_port = 0 : i64, result_delays = [1]} : memref<32x32xf32>
        %26 = func.call @div_f32(%cst, %25) {result_delays = [14]} : (f32, f32) -> f32
        %27 = affine.load %6[%arg3, %arg4] {hir.memref_port = 0 : i64, result_delays = [1]} : memref<32x32xf32>
        %28 = func.call @mul_f32(%27, %24) {result_delays = [4]} : (f32, f32) -> f32
        %29 = affine.load %7[%arg3, %arg4] {hir.memref_port = 0 : i64, result_delays = [1]} : memref<32x32xf32>
        %30 = func.call @mul_f32(%29, %23) {result_delays = [4]} : (f32, f32) -> f32
        %31 = func.call @sub_f32(%28, %30) {result_delays = [5]} : (f32, f32) -> f32
        %32 = func.call @mul_f32(%26, %31) {result_delays = [4]} : (f32, f32) -> f32
        affine.store %32, %arg0[%arg3, %arg4, 0] {hir.memref_port = 0 : i64} : memref<32x32x2xf32>
        %33 = affine.load %8[%arg3, %arg4] {hir.memref_port = 0 : i64, result_delays = [1]} : memref<32x32xf32>
        %34 = func.call @mul_f32(%33, %24) {result_delays = [4]} : (f32, f32) -> f32
        %35 = affine.load %6[%arg3, %arg4] {hir.memref_port = 0 : i64, result_delays = [1]} : memref<32x32xf32>
        %36 = func.call @mul_f32(%35, %23) {result_delays = [4]} : (f32, f32) -> f32
        %37 = func.call @sub_f32(%34, %36) {result_delays = [5]} : (f32, f32) -> f32
        %38 = func.call @mul_f32(%26, %37) {result_delays = [4]} : (f32, f32) -> f32
        affine.store %38, %arg0[%arg3, %arg4, 1] {hir.memref_port = 0 : i64} : memref<32x32x2xf32>
      } {II = 2 : i64}
    } {II = 64 : i64}
    return
  }
}

