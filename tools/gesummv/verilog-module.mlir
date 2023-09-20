module {
  hir.func.extern @mul_i32 at %arg2 (%arg0 : i32 delay 0, %arg1 : i32 delay 0) -> (%out : i32 delay 1) {argNames = ["a", "b", "t"], resultNames = ["out"]}
  hir.func.extern @add_i32 at %arg2 (%arg0 : i32 delay 0, %arg1 : i32 delay 0) -> (%out : i32 delay 0) {argNames = ["a", "b", "t"], resultNames = ["out"]}
  func.func @gesummv_hir(%arg0: i32 {hir.delay = 0 : i64}, %arg1: i32 {hir.delay = 0 : i64}, %arg2: memref<8xi32> {hir.memref.ports = [{wr_latency = 1 : i64}]}, %arg3: memref<8x8xi32> {hir.memref.ports = [{rd_latency = 1 : i64}]}, %arg4: memref<8x8xi32> {hir.memref.ports = [{rd_latency = 1 : i64}]}, %arg5: memref<8xi32> {hir.memref.ports = [{rd_latency = 1 : i64}]}, %arg6: memref<8xi32> {hir.memref.ports = [{wr_latency = 1 : i64}]}) attributes {argNames = ["alpha", "beta", "tmp", "A", "B", "X", "Y"], hwAccel} {
    %c0_i32 = arith.constant 0 : i32
    %0 = memref.alloca() {hir.memref.ports = [{rd_latency = 0 : i64}, {wr_latency = 1 : i64}], mem_kind = "reg"} : memref<1xi32>
    %1 = memref.alloca() {hir.memref.ports = [{rd_latency = 0 : i64}, {wr_latency = 1 : i64}], mem_kind = "reg"} : memref<1xi32>
    affine.for %arg7 = 0 to 8 {
      affine.store %c0_i32, %1[0] : memref<1xi32>
      affine.store %c0_i32, %0[0] : memref<1xi32>
      affine.for %arg8 = 0 to 8 {
        %7 = affine.load %arg3[%arg7, %arg8] {result_delays = [1]} : memref<8x8xi32>
        hir.probe %7 name "probe_0" : i32
        %8 = affine.load %arg5[%arg8] {result_delays = [1]} : memref<8xi32>
        %9 = arith.muli %7, %8 {hir.func = @mul_i32, result_delays = [1]} : i32
        %10 = affine.load %arg4[%arg7, %arg8] {result_delays = [1]} : memref<8x8xi32>
        %11 = arith.muli %10, %8 {hir.func = @mul_i32, result_delays = [1]} : i32
        %12 = affine.load %1[0] {result_delays = [0]} : memref<1xi32>
        %13 = arith.addi %12, %9 {hir.func = @add_i32, result_delays = [0]} : i32
        affine.store %13, %1[0] : memref<1xi32>
        %14 = affine.load %0[0] {result_delays = [0]} : memref<1xi32>
        %15 = arith.addi %14, %11 {hir.func = @add_i32, result_delays = [0]} : i32
        affine.store %15, %0[0] : memref<1xi32>
      } {II = 1 : i64}
      %2 = affine.load %1[0] {result_delays = [0]} : memref<1xi32>
      affine.store %2, %arg2[%arg7] : memref<8xi32>
      %3 = affine.load %0[0] {result_delays = [0]} : memref<1xi32>
      %4 = arith.muli %arg0, %2 {hir.func = @mul_i32, result_delays = [1]} : i32
      %5 = arith.muli %arg1, %3 {hir.func = @mul_i32, result_delays = [1]} : i32
      %6 = arith.addi %4, %5 {hir.func = @add_i32, result_delays = [0]} : i32
      affine.store %6, %arg6[%arg7] : memref<8xi32>
    } {II = 18 : i64}
    return
  }
}
