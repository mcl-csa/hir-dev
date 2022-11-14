module attributes {hir.hls} {
  func.func private @sub_f32(f32 {hir.delay = 0 : i64}, f32 {hir.delay = 0 : i64}) -> (f32 {hir.delay = 5 : i64}) attributes {argNames = ["a", "b"], hwAccel, llvm.linkage = #llvm.linkage<external>, resultNames = ["out"]}
  func.func private @mul_f32(f32 {hir.delay = 0 : i64}, f32 {hir.delay = 0 : i64}) -> (f32 {hir.delay = 4 : i64}) attributes {argNames = ["a", "b"], hwAccel, llvm.linkage = #llvm.linkage<external>, resultNames = ["out"]}
  func.func private @add_f32(f32 {hir.delay = 0 : i64}, f32 {hir.delay = 0 : i64}) -> (f32 {hir.delay = 5 : i64}) attributes {argNames = ["a", "b"], hwAccel, llvm.linkage = #llvm.linkage<external>, resultNames = ["out"]}
  func.func @harris_hir(%arg0: memref<32x32xf32> {hir.memref.ports = [{wr_latency = 1 : i64}]}, %arg1: memref<32x32xf32> {hir.memref.ports = [{rd_latency = 1 : i64}]}) attributes {argNames = ["harris", "img"], hwAccel, llvm.linkage = #llvm.linkage<external>, resultNames = []} {
    %cst = arith.constant 4.000000e-02 : f32
    %cst_0 = arith.constant 0.000000e+00 : f32
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
        %20 = affine.load %arg1[%arg2, %arg3] {hir.memref_port = 0 : i64, result_delays = [1]} : memref<32x32xf32>
        affine.store %20, %19[%arg2, %arg3] {hir.memref_port = 1 : i64} : memref<32x32xf32>
        affine.store %20, %18[%arg2, %arg3] {hir.memref_port = 1 : i64} : memref<32x32xf32>
      } {II = 1 : i64}
    } {II = 32 : i64}
    affine.for %arg2 = 1 to 31 {
      affine.for %arg3 = 1 to 31 {
        %20 = affine.load %19[%arg2 - 1, %arg3 - 1] {hir.memref_port = 0 : i64, result_delays = [1]} : memref<32x32xf32>
        %21 = func.call @mul_f32(%20, %cst_0) {result_delays = [4]} : (f32, f32) -> f32
        %22 = affine.load %19[%arg2 + 1, %arg3 - 1] {hir.memref_port = 0 : i64, result_delays = [1]} : memref<32x32xf32>
        %23 = func.call @mul_f32(%22, %cst_0) {result_delays = [4]} : (f32, f32) -> f32
        %24 = func.call @add_f32(%21, %23) {result_delays = [5]} : (f32, f32) -> f32
        %25 = affine.load %19[%arg2 - 1, %arg3] {hir.memref_port = 0 : i64, result_delays = [1]} : memref<32x32xf32>
        %26 = func.call @mul_f32(%25, %cst_0) {result_delays = [4]} : (f32, f32) -> f32
        %27 = affine.load %19[%arg2 + 1, %arg3] {hir.memref_port = 0 : i64, result_delays = [1]} : memref<32x32xf32>
        %28 = func.call @mul_f32(%27, %cst_0) {result_delays = [4]} : (f32, f32) -> f32
        %29 = func.call @add_f32(%26, %28) {result_delays = [5]} : (f32, f32) -> f32
        %30 = func.call @add_f32(%24, %29) {result_delays = [5]} : (f32, f32) -> f32
        %31 = affine.load %19[%arg2 - 1, %arg3 + 1] {hir.memref_port = 0 : i64, result_delays = [1]} : memref<32x32xf32>
        %32 = func.call @mul_f32(%31, %cst_0) {result_delays = [4]} : (f32, f32) -> f32
        %33 = affine.load %19[%arg2 + 1, %arg3 + 1] {hir.memref_port = 0 : i64, result_delays = [1]} : memref<32x32xf32>
        %34 = func.call @mul_f32(%33, %cst_0) {result_delays = [4]} : (f32, f32) -> f32
        %35 = func.call @add_f32(%32, %34) {result_delays = [5]} : (f32, f32) -> f32
        %36 = func.call @add_f32(%30, %35) {result_delays = [5]} : (f32, f32) -> f32
        affine.store %36, %17[%arg2, %arg3] {hir.memref_port = 1 : i64} : memref<32x32xf32>
      } {II = 6 : i64}
    } {II = 200 : i64}
    affine.for %arg2 = 0 to 32 {
      affine.for %arg3 = 0 to 32 {
        %20 = affine.load %17[%arg2, %arg3] {hir.memref_port = 0 : i64, result_delays = [1]} : memref<32x32xf32>
        affine.store %20, %16[%arg2, %arg3] {hir.memref_port = 1 : i64} : memref<32x32xf32>
        affine.store %20, %15[%arg2, %arg3] {hir.memref_port = 1 : i64} : memref<32x32xf32>
      } {II = 1 : i64}
    } {II = 32 : i64}
    affine.for %arg2 = 1 to 31 {
      affine.for %arg3 = 1 to 31 {
        %20 = affine.load %18[%arg2 - 1, %arg3 - 1] {hir.memref_port = 0 : i64, result_delays = [1]} : memref<32x32xf32>
        %21 = func.call @mul_f32(%20, %cst_0) {result_delays = [4]} : (f32, f32) -> f32
        %22 = affine.load %18[%arg2 - 1, %arg3 + 1] {hir.memref_port = 0 : i64, result_delays = [1]} : memref<32x32xf32>
        %23 = func.call @mul_f32(%22, %cst_0) {result_delays = [4]} : (f32, f32) -> f32
        %24 = func.call @add_f32(%21, %23) {result_delays = [5]} : (f32, f32) -> f32
        %25 = affine.load %18[%arg2, %arg3 - 1] {hir.memref_port = 0 : i64, result_delays = [1]} : memref<32x32xf32>
        %26 = func.call @mul_f32(%25, %cst_0) {result_delays = [4]} : (f32, f32) -> f32
        %27 = affine.load %18[%arg2, %arg3 + 1] {hir.memref_port = 0 : i64, result_delays = [1]} : memref<32x32xf32>
        %28 = func.call @mul_f32(%27, %cst_0) {result_delays = [4]} : (f32, f32) -> f32
        %29 = func.call @add_f32(%26, %28) {result_delays = [5]} : (f32, f32) -> f32
        %30 = func.call @add_f32(%24, %29) {result_delays = [5]} : (f32, f32) -> f32
        %31 = affine.load %18[%arg2 + 1, %arg3 - 1] {hir.memref_port = 0 : i64, result_delays = [1]} : memref<32x32xf32>
        %32 = func.call @mul_f32(%31, %cst_0) {result_delays = [4]} : (f32, f32) -> f32
        %33 = affine.load %18[%arg2 + 1, %arg3 + 1] {hir.memref_port = 0 : i64, result_delays = [1]} : memref<32x32xf32>
        %34 = func.call @mul_f32(%33, %cst_0) {result_delays = [4]} : (f32, f32) -> f32
        %35 = func.call @add_f32(%32, %34) {result_delays = [5]} : (f32, f32) -> f32
        %36 = func.call @add_f32(%30, %35) {result_delays = [5]} : (f32, f32) -> f32
        affine.store %36, %14[%arg2, %arg3] {hir.memref_port = 1 : i64} : memref<32x32xf32>
      } {II = 6 : i64}
    } {II = 200 : i64}
    affine.for %arg2 = 0 to 32 {
      affine.for %arg3 = 0 to 32 {
        %20 = affine.load %14[%arg2, %arg3] {hir.memref_port = 0 : i64, result_delays = [1]} : memref<32x32xf32>
        affine.store %20, %13[%arg2, %arg3] {hir.memref_port = 1 : i64} : memref<32x32xf32>
        affine.store %20, %12[%arg2, %arg3] {hir.memref_port = 1 : i64} : memref<32x32xf32>
      } {II = 1 : i64}
    } {II = 32 : i64}
    affine.for %arg2 = 0 to 32 {
      affine.for %arg3 = 0 to 32 {
        %20 = affine.load %16[%arg2, %arg3] {hir.memref_port = 0 : i64, result_delays = [1]} : memref<32x32xf32>
        %21 = func.call @mul_f32(%20, %20) {result_delays = [4]} : (f32, f32) -> f32
        affine.store %21, %11[%arg2, %arg3] {hir.memref_port = 1 : i64} : memref<32x32xf32>
      } {II = 1 : i64}
    } {II = 32 : i64}
    affine.for %arg2 = 0 to 32 {
      affine.for %arg3 = 0 to 32 {
        %20 = affine.load %13[%arg2, %arg3] {hir.memref_port = 0 : i64, result_delays = [1]} : memref<32x32xf32>
        %21 = func.call @mul_f32(%20, %20) {result_delays = [4]} : (f32, f32) -> f32
        affine.store %21, %10[%arg2, %arg3] {hir.memref_port = 1 : i64} : memref<32x32xf32>
      } {II = 1 : i64}
    } {II = 32 : i64}
    affine.for %arg2 = 0 to 32 {
      affine.for %arg3 = 0 to 32 {
        %20 = affine.load %15[%arg2, %arg3] {hir.memref_port = 0 : i64, result_delays = [1]} : memref<32x32xf32>
        %21 = affine.load %12[%arg2, %arg3] {hir.memref_port = 0 : i64, result_delays = [1]} : memref<32x32xf32>
        %22 = func.call @mul_f32(%20, %21) {result_delays = [4]} : (f32, f32) -> f32
        affine.store %22, %9[%arg2, %arg3] {hir.memref_port = 1 : i64} : memref<32x32xf32>
      } {II = 1 : i64}
    } {II = 32 : i64}
    affine.for %arg2 = 1 to 31 {
      affine.for %arg3 = 1 to 31 {
        %20 = affine.load %11[%arg2 - 1, %arg3 - 1] {hir.memref_port = 0 : i64, result_delays = [1]} : memref<32x32xf32>
        %21 = affine.load %11[%arg2 - 1, %arg3] {hir.memref_port = 0 : i64, result_delays = [1]} : memref<32x32xf32>
        %22 = func.call @add_f32(%20, %21) {result_delays = [5]} : (f32, f32) -> f32
        %23 = affine.load %11[%arg2 - 1, %arg3 + 1] {hir.memref_port = 0 : i64, result_delays = [1]} : memref<32x32xf32>
        %24 = affine.load %11[%arg2, %arg3 - 1] {hir.memref_port = 0 : i64, result_delays = [1]} : memref<32x32xf32>
        %25 = func.call @add_f32(%23, %24) {result_delays = [5]} : (f32, f32) -> f32
        %26 = func.call @add_f32(%22, %25) {result_delays = [5]} : (f32, f32) -> f32
        %27 = affine.load %11[%arg2, %arg3] {hir.memref_port = 0 : i64, result_delays = [1]} : memref<32x32xf32>
        %28 = affine.load %11[%arg2, %arg3 + 1] {hir.memref_port = 0 : i64, result_delays = [1]} : memref<32x32xf32>
        %29 = func.call @add_f32(%27, %28) {result_delays = [5]} : (f32, f32) -> f32
        %30 = affine.load %11[%arg2 + 1, %arg3 - 1] {hir.memref_port = 0 : i64, result_delays = [1]} : memref<32x32xf32>
        %31 = affine.load %11[%arg2 + 1, %arg3] {hir.memref_port = 0 : i64, result_delays = [1]} : memref<32x32xf32>
        %32 = func.call @add_f32(%30, %31) {result_delays = [5]} : (f32, f32) -> f32
        %33 = func.call @add_f32(%29, %32) {result_delays = [5]} : (f32, f32) -> f32
        %34 = func.call @add_f32(%26, %33) {result_delays = [5]} : (f32, f32) -> f32
        %35 = affine.load %11[%arg2 + 1, %arg3 + 1] {hir.memref_port = 0 : i64, result_delays = [1]} : memref<32x32xf32>
        %36 = func.call @add_f32(%34, %35) {result_delays = [5]} : (f32, f32) -> f32
        affine.store %36, %8[%arg2, %arg3] {hir.memref_port = 1 : i64} : memref<32x32xf32>
      } {II = 9 : i64}
    } {II = 300 : i64}
    affine.for %arg2 = 0 to 32 {
      affine.for %arg3 = 0 to 32 {
        %20 = affine.load %8[%arg2, %arg3] {hir.memref_port = 0 : i64, result_delays = [1]} : memref<32x32xf32>
        affine.store %20, %7[%arg2, %arg3] {hir.memref_port = 1 : i64} : memref<32x32xf32>
        affine.store %20, %6[%arg2, %arg3] {hir.memref_port = 1 : i64} : memref<32x32xf32>
      } {II = 1 : i64}
    } {II = 32 : i64}
    affine.for %arg2 = 1 to 31 {
      affine.for %arg3 = 1 to 31 {
        %20 = affine.load %10[%arg2 - 1, %arg3 - 1] {hir.memref_port = 0 : i64, result_delays = [1]} : memref<32x32xf32>
        %21 = affine.load %10[%arg2 - 1, %arg3] {hir.memref_port = 0 : i64, result_delays = [1]} : memref<32x32xf32>
        %22 = func.call @add_f32(%20, %21) {result_delays = [5]} : (f32, f32) -> f32
        %23 = affine.load %10[%arg2 - 1, %arg3 + 1] {hir.memref_port = 0 : i64, result_delays = [1]} : memref<32x32xf32>
        %24 = affine.load %10[%arg2, %arg3 - 1] {hir.memref_port = 0 : i64, result_delays = [1]} : memref<32x32xf32>
        %25 = func.call @add_f32(%23, %24) {result_delays = [5]} : (f32, f32) -> f32
        %26 = func.call @add_f32(%22, %25) {result_delays = [5]} : (f32, f32) -> f32
        %27 = affine.load %10[%arg2, %arg3] {hir.memref_port = 0 : i64, result_delays = [1]} : memref<32x32xf32>
        %28 = affine.load %10[%arg2, %arg3 + 1] {hir.memref_port = 0 : i64, result_delays = [1]} : memref<32x32xf32>
        %29 = func.call @add_f32(%27, %28) {result_delays = [5]} : (f32, f32) -> f32
        %30 = affine.load %10[%arg2 + 1, %arg3 - 1] {hir.memref_port = 0 : i64, result_delays = [1]} : memref<32x32xf32>
        %31 = affine.load %10[%arg2 + 1, %arg3] {hir.memref_port = 0 : i64, result_delays = [1]} : memref<32x32xf32>
        %32 = func.call @add_f32(%30, %31) {result_delays = [5]} : (f32, f32) -> f32
        %33 = func.call @add_f32(%29, %32) {result_delays = [5]} : (f32, f32) -> f32
        %34 = func.call @add_f32(%26, %33) {result_delays = [5]} : (f32, f32) -> f32
        %35 = affine.load %10[%arg2 + 1, %arg3 + 1] {hir.memref_port = 0 : i64, result_delays = [1]} : memref<32x32xf32>
        %36 = func.call @add_f32(%34, %35) {result_delays = [5]} : (f32, f32) -> f32
        affine.store %36, %5[%arg2, %arg3] {hir.memref_port = 1 : i64} : memref<32x32xf32>
      } {II = 9 : i64}
    } {II = 300 : i64}
    affine.for %arg2 = 0 to 32 {
      affine.for %arg3 = 0 to 32 {
        %20 = affine.load %5[%arg2, %arg3] {hir.memref_port = 0 : i64, result_delays = [1]} : memref<32x32xf32>
        affine.store %20, %4[%arg2, %arg3] {hir.memref_port = 1 : i64} : memref<32x32xf32>
        affine.store %20, %3[%arg2, %arg3] {hir.memref_port = 1 : i64} : memref<32x32xf32>
      } {II = 1 : i64}
    } {II = 32 : i64}
    affine.for %arg2 = 1 to 31 {
      affine.for %arg3 = 1 to 31 {
        %20 = affine.load %9[%arg2 - 1, %arg3 - 1] {hir.memref_port = 0 : i64, result_delays = [1]} : memref<32x32xf32>
        %21 = affine.load %9[%arg2 - 1, %arg3] {hir.memref_port = 0 : i64, result_delays = [1]} : memref<32x32xf32>
        %22 = func.call @add_f32(%20, %21) {result_delays = [5]} : (f32, f32) -> f32
        %23 = affine.load %9[%arg2 - 1, %arg3 + 1] {hir.memref_port = 0 : i64, result_delays = [1]} : memref<32x32xf32>
        %24 = affine.load %9[%arg2, %arg3 - 1] {hir.memref_port = 0 : i64, result_delays = [1]} : memref<32x32xf32>
        %25 = func.call @add_f32(%23, %24) {result_delays = [5]} : (f32, f32) -> f32
        %26 = func.call @add_f32(%22, %25) {result_delays = [5]} : (f32, f32) -> f32
        %27 = affine.load %9[%arg2, %arg3] {hir.memref_port = 0 : i64, result_delays = [1]} : memref<32x32xf32>
        %28 = affine.load %9[%arg2, %arg3 + 1] {hir.memref_port = 0 : i64, result_delays = [1]} : memref<32x32xf32>
        %29 = func.call @add_f32(%27, %28) {result_delays = [5]} : (f32, f32) -> f32
        %30 = affine.load %9[%arg2 + 1, %arg3 - 1] {hir.memref_port = 0 : i64, result_delays = [1]} : memref<32x32xf32>
        %31 = affine.load %9[%arg2 + 1, %arg3] {hir.memref_port = 0 : i64, result_delays = [1]} : memref<32x32xf32>
        %32 = func.call @add_f32(%30, %31) {result_delays = [5]} : (f32, f32) -> f32
        %33 = func.call @add_f32(%29, %32) {result_delays = [5]} : (f32, f32) -> f32
        %34 = func.call @add_f32(%26, %33) {result_delays = [5]} : (f32, f32) -> f32
        %35 = affine.load %9[%arg2 + 1, %arg3 + 1] {hir.memref_port = 0 : i64, result_delays = [1]} : memref<32x32xf32>
        %36 = func.call @add_f32(%34, %35) {result_delays = [5]} : (f32, f32) -> f32
        affine.store %36, %2[%arg2, %arg3] {hir.memref_port = 1 : i64} : memref<32x32xf32>
      } {II = 9 : i64}
    } {II = 300 : i64}
    affine.for %arg2 = 0 to 32 {
      affine.for %arg3 = 0 to 32 {
        %20 = affine.load %2[%arg2, %arg3] {hir.memref_port = 0 : i64, result_delays = [1]} : memref<32x32xf32>
        %21 = affine.load %7[%arg2, %arg3] {hir.memref_port = 0 : i64, result_delays = [1]} : memref<32x32xf32>
        %22 = affine.load %4[%arg2, %arg3] {hir.memref_port = 0 : i64, result_delays = [1]} : memref<32x32xf32>
        %23 = func.call @mul_f32(%21, %22) {result_delays = [4]} : (f32, f32) -> f32
        %24 = func.call @mul_f32(%20, %20) {result_delays = [4]} : (f32, f32) -> f32
        %25 = func.call @sub_f32(%23, %24) {result_delays = [5]} : (f32, f32) -> f32
        affine.store %25, %1[%arg2, %arg3] {hir.memref_port = 1 : i64} : memref<32x32xf32>
      } {II = 1 : i64}
    } {II = 32 : i64}
    affine.for %arg2 = 0 to 32 {
      affine.for %arg3 = 0 to 32 {
        %20 = affine.load %6[%arg2, %arg3] {hir.memref_port = 0 : i64, result_delays = [1]} : memref<32x32xf32>
        %21 = affine.load %3[%arg2, %arg3] {hir.memref_port = 0 : i64, result_delays = [1]} : memref<32x32xf32>
        %22 = func.call @add_f32(%20, %21) {result_delays = [5]} : (f32, f32) -> f32
        affine.store %22, %0[%arg2, %arg3] {hir.memref_port = 1 : i64} : memref<32x32xf32>
      } {II = 1 : i64}
    } {II = 32 : i64}
    affine.for %arg2 = 0 to 32 {
      affine.for %arg3 = 0 to 32 {
        %20 = affine.load %0[%arg2, %arg3] {hir.memref_port = 0 : i64, result_delays = [1]} : memref<32x32xf32>
        %21 = affine.load %1[%arg2, %arg3] {hir.memref_port = 0 : i64, result_delays = [1]} : memref<32x32xf32>
        %22 = func.call @mul_f32(%20, %20) {result_delays = [4]} : (f32, f32) -> f32
        %23 = func.call @mul_f32(%cst, %22) {result_delays = [4]} : (f32, f32) -> f32
        %24 = func.call @sub_f32(%21, %23) {result_delays = [5]} : (f32, f32) -> f32
        affine.store %24, %arg0[%arg2, %arg3] {hir.memref_port = 0 : i64} : memref<32x32xf32>
      } {II = 1 : i64}
    } {II = 32 : i64}
    return
  }
}

