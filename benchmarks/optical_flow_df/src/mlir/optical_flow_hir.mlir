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
    %14 = memref.alloca() {hir.memref.ports = [{rd_latency = 1 : i64}, {wr_latency = 1 : i64}], mem_kind = "bram"} : memref<32x32xf32>
    %15 = memref.alloca() {hir.memref.ports = [{rd_latency = 1 : i64}, {wr_latency = 1 : i64}], mem_kind = "bram"} : memref<32x32xf32>
    %16 = memref.alloca() {hir.memref.ports = [{rd_latency = 1 : i64}, {wr_latency = 1 : i64}], mem_kind = "bram"} : memref<32x32xf32>
    %17 = memref.alloca() {hir.memref.ports = [{rd_latency = 1 : i64}, {wr_latency = 1 : i64}], mem_kind = "bram"} : memref<32x32xf32>
    %18 = memref.alloca() {hir.memref.ports = [{rd_latency = 1 : i64}, {wr_latency = 1 : i64}], mem_kind = "bram"} : memref<32x32xf32>
    %19 = memref.alloca() {hir.memref.ports = [{rd_latency = 1 : i64}, {wr_latency = 1 : i64}], mem_kind = "bram"} : memref<32x32xf32>
    %20 = memref.alloca() {hir.memref.ports = [{rd_latency = 1 : i64}, {wr_latency = 1 : i64}], mem_kind = "bram"} : memref<32x32xf32>
    %21 = memref.alloca() {hir.memref.ports = [{rd_latency = 1 : i64}, {wr_latency = 1 : i64}], mem_kind = "bram"} : memref<32x32xf32>
    %22 = memref.alloca() {hir.memref.ports = [{rd_latency = 1 : i64}, {wr_latency = 1 : i64}], mem_kind = "bram"} : memref<32x32xf32>
    %23 = memref.alloca() {hir.memref.ports = [{rd_latency = 1 : i64}, {wr_latency = 1 : i64}], mem_kind = "bram"} : memref<32x32xf32>
    %24 = memref.alloca() {hir.memref.ports = [{rd_latency = 1 : i64}, {wr_latency = 1 : i64}], mem_kind = "bram"} : memref<32x32xf32>
    %25 = memref.alloca() {hir.memref.ports = [{rd_latency = 1 : i64}, {wr_latency = 1 : i64}], mem_kind = "bram"} : memref<32x32xf32>
    affine.for %arg3 = 0 to 32 {
      affine.for %arg4 = 0 to 32 {
        %35 = affine.load %arg1[%arg3, %arg4] {hir.memref_port = 0 : i64, result_delays = [1]} : memref<32x32xf32>
        affine.store %35, %25[%arg3, %arg4] {hir.memref_port = 1 : i64} : memref<32x32xf32>
        affine.store %35, %24[%arg3, %arg4] {hir.memref_port = 1 : i64} : memref<32x32xf32>
      } {II = 1 : i64}
    } {II = 36 : i64}
    affine.for %arg3 = 0 to 32 {
      affine.for %arg4 = 0 to 32 {
        %35 = affine.load %24[%arg3, %arg4] {hir.memref_port = 0 : i64, result_delays = [1]} : memref<32x32xf32>
        affine.store %35, %23[%arg3, %arg4] {hir.memref_port = 1 : i64} : memref<32x32xf32>
        affine.store %35, %22[%arg3, %arg4] {hir.memref_port = 1 : i64} : memref<32x32xf32>
      } {II = 1 : i64}
    } {II = 36 : i64}
    %26 = memref.alloca() {hir.memref.ports = [{rd_latency = 0 : i64}, {wr_latency = 1 : i64}], mem_kind = "reg"} : memref<f32>
    %27 = memref.alloca() {hir.memref.ports = [{rd_latency = 1 : i64}, {wr_latency = 1 : i64}], mem_kind = "bram"} : memref<2x4xf32>
    affine.store %cst_1, %26[] {hir.memref_port = 1 : i64} : memref<f32>
    affine.store %cst_3, %27[0, 0] {hir.memref_port = 1 : i64} : memref<2x4xf32>
    affine.store %cst_2, %27[1, 0] {hir.memref_port = 1 : i64} : memref<2x4xf32>
    affine.store %cst_5, %27[0, 1] {hir.memref_port = 1 : i64} : memref<2x4xf32>
    affine.store %cst_4, %27[1, 1] {hir.memref_port = 1 : i64} : memref<2x4xf32>
    affine.store %cst_3, %27[0, 2] {hir.memref_port = 1 : i64} : memref<2x4xf32>
    affine.store %cst_2, %27[1, 2] {hir.memref_port = 1 : i64} : memref<2x4xf32>
    affine.for %arg3 = 1 to 31 {
      affine.for %arg4 = 1 to 31 {
        affine.store %cst_1, %26[] {hir.memref_port = 1 : i64} : memref<f32>
        affine.for %arg5 = 0 to 2 {
          affine.for %arg6 = 0 to 3 {
            %36 = affine.load %26[] {hir.memref_port = 0 : i64, result_delays = [0]} : memref<f32>
            %37 = affine.load %25[%arg3 + %arg5 * 2 - 1, %arg4 + %arg6 - 1] {hir.memref_port = 0 : i64, result_delays = [1]} : memref<32x32xf32>
            %38 = affine.load %27[%arg5, %arg6] {hir.memref_port = 0 : i64, result_delays = [1]} : memref<2x4xf32>
            %39 = func.call @mul_f32(%37, %38) {result_delays = [4]} : (f32, f32) -> f32
            %40 = func.call @add_f32(%36, %39) {result_delays = [5]} : (f32, f32) -> f32
            affine.store %40, %26[] {hir.memref_port = 1 : i64} : memref<f32>
          } {II = 6 : i64}
        } {II = 18 : i64}
        %35 = affine.load %26[] {hir.memref_port = 0 : i64, result_delays = [0]} : memref<f32>
        affine.store %35, %21[%arg3, %arg4] {hir.memref_port = 1 : i64} : memref<32x32xf32>
      } {II = 40 : i64}
    } {II = 1300 : i64}
    affine.for %arg3 = 0 to 32 {
      affine.for %arg4 = 0 to 32 {
        %35 = affine.load %21[%arg3, %arg4] {hir.memref_port = 0 : i64, result_delays = [1]} : memref<32x32xf32>
        affine.store %35, %20[%arg3, %arg4] {hir.memref_port = 1 : i64} : memref<32x32xf32>
        affine.store %35, %19[%arg3, %arg4] {hir.memref_port = 1 : i64} : memref<32x32xf32>
      } {II = 1 : i64}
    } {II = 36 : i64}
    %28 = memref.alloca() {hir.memref.ports = [{rd_latency = 0 : i64}, {wr_latency = 1 : i64}], mem_kind = "reg"} : memref<f32>
    %29 = memref.alloca() {hir.memref.ports = [{rd_latency = 1 : i64}, {wr_latency = 1 : i64}], mem_kind = "bram"} : memref<2x4xf32>
    affine.store %cst_1, %28[] {hir.memref_port = 1 : i64} : memref<f32>
    affine.store %cst_3, %29[0, 0] {hir.memref_port = 1 : i64} : memref<2x4xf32>
    affine.store %cst_2, %29[1, 0] {hir.memref_port = 1 : i64} : memref<2x4xf32>
    affine.store %cst_5, %29[0, 1] {hir.memref_port = 1 : i64} : memref<2x4xf32>
    affine.store %cst_4, %29[1, 1] {hir.memref_port = 1 : i64} : memref<2x4xf32>
    affine.store %cst_3, %29[0, 2] {hir.memref_port = 1 : i64} : memref<2x4xf32>
    affine.store %cst_2, %29[1, 2] {hir.memref_port = 1 : i64} : memref<2x4xf32>
    affine.for %arg3 = 1 to 31 {
      affine.for %arg4 = 1 to 31 {
        affine.store %cst_1, %28[] {hir.memref_port = 1 : i64} : memref<f32>
        affine.for %arg5 = 0 to 2 {
          affine.for %arg6 = 0 to 3 {
            %36 = affine.load %23[%arg3 + %arg6 - 1, %arg4 + %arg5 * 2 - 1] {hir.memref_port = 0 : i64, result_delays = [1]} : memref<32x32xf32>
            %37 = affine.load %29[%arg5, %arg6] {hir.memref_port = 0 : i64, result_delays = [1]} : memref<2x4xf32>
            %38 = func.call @mul_f32(%36, %37) {result_delays = [4]} : (f32, f32) -> f32
            %39 = affine.load %28[] {hir.memref_port = 0 : i64, result_delays = [0]} : memref<f32>
            %40 = func.call @add_f32(%39, %38) {result_delays = [5]} : (f32, f32) -> f32
            affine.store %40, %28[] {hir.memref_port = 1 : i64} : memref<f32>
          } {II = 6 : i64}
        } {II = 18 : i64}
        %35 = affine.load %28[] {hir.memref_port = 0 : i64, result_delays = [0]} : memref<f32>
        affine.store %35, %18[%arg3, %arg4] {hir.memref_port = 1 : i64} : memref<32x32xf32>
      } {II = 40 : i64}
    } {II = 1210 : i64}
    affine.for %arg3 = 0 to 32 {
      affine.for %arg4 = 0 to 32 {
        %35 = affine.load %18[%arg3, %arg4] {hir.memref_port = 0 : i64, result_delays = [1]} : memref<32x32xf32>
        affine.store %35, %17[%arg3, %arg4] {hir.memref_port = 1 : i64} : memref<32x32xf32>
        affine.store %35, %16[%arg3, %arg4] {hir.memref_port = 1 : i64} : memref<32x32xf32>
      } {II = 1 : i64}
    } {II = 36 : i64}
    affine.for %arg3 = 1 to 31 {
      affine.for %arg4 = 1 to 31 {
        %35 = affine.load %20[%arg3, %arg4] {hir.memref_port = 0 : i64, result_delays = [1]} : memref<32x32xf32>
        %36 = func.call @mul_f32(%35, %35) {result_delays = [4]} : (f32, f32) -> f32
        affine.store %36, %15[%arg3, %arg4] {hir.memref_port = 1 : i64} : memref<32x32xf32>
      } {II = 1 : i64}
    } {II = 36 : i64}
    affine.for %arg3 = 1 to 31 {
      affine.for %arg4 = 1 to 31 {
        %35 = affine.load %17[%arg3, %arg4] {hir.memref_port = 0 : i64, result_delays = [1]} : memref<32x32xf32>
        %36 = func.call @mul_f32(%35, %35) {result_delays = [4]} : (f32, f32) -> f32
        affine.store %36, %14[%arg3, %arg4] {hir.memref_port = 1 : i64} : memref<32x32xf32>
      } {II = 1 : i64}
    } {II = 36 : i64}
    affine.for %arg3 = 1 to 31 {
      affine.for %arg4 = 1 to 31 {
        %35 = affine.load %19[%arg3, %arg4] {hir.memref_port = 0 : i64, result_delays = [1]} : memref<32x32xf32>
        %36 = affine.load %16[%arg3, %arg4] {hir.memref_port = 0 : i64, result_delays = [1]} : memref<32x32xf32>
        %37 = func.call @mul_f32(%35, %36) {result_delays = [4]} : (f32, f32) -> f32
        affine.store %37, %13[%arg3, %arg4] {hir.memref_port = 1 : i64} : memref<32x32xf32>
      } {II = 1 : i64}
    } {II = 36 : i64}
    %30 = memref.alloca() {hir.memref.ports = [{rd_latency = 0 : i64}, {wr_latency = 1 : i64}], mem_kind = "reg"} : memref<f32>
    affine.store %cst_1, %30[] {hir.memref_port = 1 : i64} : memref<f32>
    affine.for %arg3 = 2 to 30 {
      affine.for %arg4 = 2 to 30 {
        affine.store %cst_1, %30[] {hir.memref_port = 1 : i64} : memref<f32>
        affine.for %arg5 = 0 to 3 {
          affine.for %arg6 = 0 to 3 {
            %36 = affine.load %30[] {hir.memref_port = 0 : i64, result_delays = [0]} : memref<f32>
            %37 = affine.load %15[%arg3 + %arg5 - 1, %arg4 + %arg6 - 1] {hir.memref_port = 0 : i64, result_delays = [1]} : memref<32x32xf32>
            %38 = func.call @add_f32(%36, %37) {result_delays = [5]} : (f32, f32) -> f32
            affine.store %38, %30[] {hir.memref_port = 1 : i64} : memref<f32>
          } {II = 6 : i64}
        } {II = 20 : i64}
        %35 = affine.load %30[] {hir.memref_port = 0 : i64, result_delays = [0]} : memref<f32>
        affine.store %35, %12[%arg3, %arg4] {hir.memref_port = 1 : i64} : memref<32x32xf32>
      } {II = 60 : i64}
    } {II = 1800 : i64}
    affine.for %arg3 = 0 to 32 {
      affine.for %arg4 = 0 to 32 {
        %35 = affine.load %12[%arg3, %arg4] {hir.memref_port = 0 : i64, result_delays = [1]} : memref<32x32xf32>
        affine.store %35, %11[%arg3, %arg4] {hir.memref_port = 1 : i64} : memref<32x32xf32>
        affine.store %35, %10[%arg3, %arg4] {hir.memref_port = 1 : i64} : memref<32x32xf32>
      } {II = 1 : i64}
    } {II = 36 : i64}
    %31 = memref.alloca() {hir.memref.ports = [{rd_latency = 0 : i64}, {wr_latency = 1 : i64}], mem_kind = "reg"} : memref<f32>
    affine.store %cst_1, %31[] {hir.memref_port = 1 : i64} : memref<f32>
    affine.for %arg3 = 2 to 30 {
      affine.for %arg4 = 2 to 30 {
        affine.store %cst_1, %31[] {hir.memref_port = 1 : i64} : memref<f32>
        affine.for %arg5 = 0 to 3 {
          affine.for %arg6 = 0 to 3 {
            %36 = affine.load %31[] {hir.memref_port = 0 : i64, result_delays = [0]} : memref<f32>
            %37 = affine.load %14[%arg3 + %arg5 - 1, %arg4 + %arg6 - 1] {hir.memref_port = 0 : i64, result_delays = [1]} : memref<32x32xf32>
            %38 = func.call @add_f32(%36, %37) {result_delays = [5]} : (f32, f32) -> f32
            affine.store %38, %31[] {hir.memref_port = 1 : i64} : memref<f32>
          } {II = 6 : i64}
        } {II = 20 : i64}
        %35 = affine.load %31[] {hir.memref_port = 0 : i64, result_delays = [0]} : memref<f32>
        affine.store %35, %9[%arg3, %arg4] {hir.memref_port = 1 : i64} : memref<32x32xf32>
      } {II = 60 : i64}
    } {II = 1800 : i64}
    affine.for %arg3 = 0 to 32 {
      affine.for %arg4 = 0 to 32 {
        %35 = affine.load %9[%arg3, %arg4] {hir.memref_port = 0 : i64, result_delays = [1]} : memref<32x32xf32>
        affine.store %35, %8[%arg3, %arg4] {hir.memref_port = 1 : i64} : memref<32x32xf32>
        affine.store %35, %7[%arg3, %arg4] {hir.memref_port = 1 : i64} : memref<32x32xf32>
      } {II = 1 : i64}
    } {II = 36 : i64}
    %32 = memref.alloca() {hir.memref.ports = [{rd_latency = 0 : i64}, {wr_latency = 1 : i64}], mem_kind = "reg"} : memref<f32>
    affine.store %cst_1, %32[] {hir.memref_port = 1 : i64} : memref<f32>
    affine.for %arg3 = 2 to 30 {
      affine.for %arg4 = 2 to 30 {
        affine.store %cst_1, %32[] {hir.memref_port = 1 : i64} : memref<f32>
        affine.for %arg5 = 0 to 3 {
          affine.for %arg6 = 0 to 3 {
            %36 = affine.load %32[] {hir.memref_port = 0 : i64, result_delays = [0]} : memref<f32>
            %37 = affine.load %13[%arg3 + %arg5 - 1, %arg4 + %arg6 - 1] {hir.memref_port = 0 : i64, result_delays = [1]} : memref<32x32xf32>
            %38 = func.call @add_f32(%36, %37) {result_delays = [5]} : (f32, f32) -> f32
            affine.store %38, %32[] {hir.memref_port = 1 : i64} : memref<f32>
          } {II = 6 : i64}
        } {II = 20 : i64}
        %35 = affine.load %32[] {hir.memref_port = 0 : i64, result_delays = [0]} : memref<f32>
        affine.store %35, %6[%arg3, %arg4] {hir.memref_port = 1 : i64} : memref<32x32xf32>
      } {II = 60 : i64}
    } {II = 1800 : i64}
    affine.for %arg3 = 2 to 30 {
      affine.for %arg4 = 2 to 30 {
        %35 = affine.load %6[%arg3, %arg4] {hir.memref_port = 0 : i64, result_delays = [1]} : memref<32x32xf32>
        %36 = affine.load %11[%arg3, %arg4] {hir.memref_port = 0 : i64, result_delays = [1]} : memref<32x32xf32>
        %37 = affine.load %8[%arg3, %arg4] {hir.memref_port = 0 : i64, result_delays = [1]} : memref<32x32xf32>
        %38 = func.call @mul_f32(%36, %37) {result_delays = [4]} : (f32, f32) -> f32
        %39 = func.call @mul_f32(%35, %35) {result_delays = [4]} : (f32, f32) -> f32
        %40 = func.call @sub_f32(%38, %39) {result_delays = [5]} : (f32, f32) -> f32
        %41 = func.call @add_f32(%40, %cst_0) {result_delays = [5]} : (f32, f32) -> f32
        affine.store %41, %0[%arg3, %arg4] {hir.memref_port = 1 : i64} : memref<32x32xf32>
      } {II = 1 : i64}
    } {II = 36 : i64}
    affine.for %arg3 = 1 to 31 {
      affine.for %arg4 = 1 to 31 {
        %35 = affine.load %22[%arg3, %arg4] {hir.memref_port = 0 : i64, result_delays = [1]} : memref<32x32xf32>
        %36 = affine.load %arg2[%arg3, %arg4] {hir.memref_port = 0 : i64, result_delays = [1]} : memref<32x32xf32>
        %37 = func.call @sub_f32(%35, %36) {result_delays = [5]} : (f32, f32) -> f32
        affine.store %37, %5[%arg3, %arg4] {hir.memref_port = 1 : i64} : memref<32x32xf32>
      } {II = 1 : i64}
    } {II = 36 : i64}
    affine.for %arg3 = 1 to 31 {
      affine.for %arg4 = 1 to 31 {
        %35 = affine.load %21[%arg3, %arg4] {hir.memref_port = 0 : i64, result_delays = [1]} : memref<32x32xf32>
        %36 = affine.load %5[%arg3, %arg4] {hir.memref_port = 0 : i64, result_delays = [1]} : memref<32x32xf32>
        %37 = func.call @mul_f32(%35, %36) {result_delays = [4]} : (f32, f32) -> f32
        affine.store %37, %4[%arg3, %arg4] {hir.memref_port = 1 : i64} : memref<32x32xf32>
      } {II = 1 : i64}
    } {II = 36 : i64}
    affine.for %arg3 = 1 to 31 {
      affine.for %arg4 = 1 to 31 {
        %35 = affine.load %18[%arg3, %arg4] {hir.memref_port = 0 : i64, result_delays = [1]} : memref<32x32xf32>
        %36 = affine.load %5[%arg3, %arg4] {hir.memref_port = 0 : i64, result_delays = [1]} : memref<32x32xf32>
        %37 = func.call @mul_f32(%35, %36) {result_delays = [4]} : (f32, f32) -> f32
        affine.store %37, %3[%arg3, %arg4] {hir.memref_port = 1 : i64} : memref<32x32xf32>
      } {II = 1 : i64}
    } {II = 36 : i64}
    %33 = memref.alloca() {hir.memref.ports = [{rd_latency = 0 : i64}, {wr_latency = 1 : i64}], mem_kind = "reg"} : memref<f32>
    affine.store %cst_1, %33[] {hir.memref_port = 1 : i64} : memref<f32>
    affine.for %arg3 = 2 to 30 {
      affine.for %arg4 = 2 to 30 {
        affine.store %cst_1, %33[] {hir.memref_port = 1 : i64} : memref<f32>
        affine.for %arg5 = 0 to 3 {
          affine.for %arg6 = 0 to 3 {
            %36 = affine.load %33[] {hir.memref_port = 0 : i64, result_delays = [0]} : memref<f32>
            %37 = affine.load %4[%arg3 + %arg5 - 1, %arg4 + %arg6 - 1] {hir.memref_port = 0 : i64, result_delays = [1]} : memref<32x32xf32>
            %38 = func.call @add_f32(%36, %37) {result_delays = [5]} : (f32, f32) -> f32
            affine.store %38, %33[] {hir.memref_port = 1 : i64} : memref<f32>
          } {II = 6 : i64}
        } {II = 20 : i64}
        %35 = affine.load %33[] {hir.memref_port = 0 : i64, result_delays = [0]} : memref<f32>
        affine.store %35, %2[%arg3, %arg4] {hir.memref_port = 1 : i64} : memref<32x32xf32>
      } {II = 60 : i64}
    } {II = 1800 : i64}
    %34 = memref.alloca() {hir.memref.ports = [{rd_latency = 0 : i64}, {wr_latency = 1 : i64}], mem_kind = "reg"} : memref<f32>
    affine.store %cst_1, %34[] {hir.memref_port = 1 : i64} : memref<f32>
    affine.for %arg3 = 2 to 30 {
      affine.for %arg4 = 2 to 30 {
        affine.store %cst_1, %34[] {hir.memref_port = 1 : i64} : memref<f32>
        affine.for %arg5 = 0 to 3 {
          affine.for %arg6 = 0 to 3 {
            %36 = affine.load %34[] {hir.memref_port = 0 : i64, result_delays = [0]} : memref<f32>
            %37 = affine.load %3[%arg3 + %arg5 - 1, %arg4 + %arg6 - 1] {hir.memref_port = 0 : i64, result_delays = [1]} : memref<32x32xf32>
            %38 = func.call @add_f32(%36, %37) {result_delays = [5]} : (f32, f32) -> f32
            affine.store %38, %34[] {hir.memref_port = 1 : i64} : memref<f32>
          } {II = 6 : i64}
        } {II = 20 : i64}
        %35 = affine.load %34[] {hir.memref_port = 0 : i64, result_delays = [0]} : memref<f32>
        affine.store %35, %1[%arg3, %arg4] {hir.memref_port = 1 : i64} : memref<32x32xf32>
      } {II = 60 : i64}
    } {II = 1800 : i64}
    affine.for %arg3 = 4 to 28 {
      affine.for %arg4 = 4 to 28 {
        %35 = affine.load %2[%arg3, %arg4] {hir.memref_port = 0 : i64, result_delays = [1]} : memref<32x32xf32>
        %36 = affine.load %1[%arg3, %arg4] {hir.memref_port = 0 : i64, result_delays = [1]} : memref<32x32xf32>
        %37 = affine.load %0[%arg3, %arg4] {hir.memref_port = 0 : i64, result_delays = [1]} : memref<32x32xf32>
        %38 = func.call @div_f32(%cst, %37) {result_delays = [14]} : (f32, f32) -> f32
        %39 = affine.load %6[%arg3, %arg4] {hir.memref_port = 0 : i64, result_delays = [1]} : memref<32x32xf32>
        %40 = func.call @mul_f32(%39, %36) {result_delays = [4]} : (f32, f32) -> f32
        %41 = affine.load %9[%arg3, %arg4] {hir.memref_port = 0 : i64, result_delays = [1]} : memref<32x32xf32>
        %42 = func.call @mul_f32(%41, %35) {result_delays = [4]} : (f32, f32) -> f32
        %43 = func.call @sub_f32(%40, %42) {result_delays = [5]} : (f32, f32) -> f32
        %44 = func.call @mul_f32(%38, %43) {result_delays = [4]} : (f32, f32) -> f32
        affine.store %44, %arg0[%arg3, %arg4, 0] {hir.memref_port = 0 : i64} : memref<32x32x2xf32>
        %45 = affine.load %12[%arg3, %arg4] {hir.memref_port = 0 : i64, result_delays = [1]} : memref<32x32xf32>
        %46 = func.call @mul_f32(%45, %36) {result_delays = [4]} : (f32, f32) -> f32
        %47 = affine.load %6[%arg3, %arg4] {hir.memref_port = 0 : i64, result_delays = [1]} : memref<32x32xf32>
        %48 = func.call @mul_f32(%47, %35) {result_delays = [4]} : (f32, f32) -> f32
        %49 = func.call @sub_f32(%46, %48) {result_delays = [5]} : (f32, f32) -> f32
        %50 = func.call @mul_f32(%38, %49) {result_delays = [4]} : (f32, f32) -> f32
        affine.store %50, %arg0[%arg3, %arg4, 1] {hir.memref_port = 0 : i64} : memref<32x32x2xf32>
      } {II = 2 : i64}
    } {II = 64 : i64}
    return
  }
}

