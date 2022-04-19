#bram_r = {"rd_latency"=1}
#reg_r = {"rd_latency"=0}
#bram_w = {"wr_latency"=1}
#reg_w = {"wr_latency"=1}

hir.func.extern @mul_f32 at %t(%a:f32, %b:f32) ->(%out:f32 delay 4)
hir.func.extern @add_f32 at %t(%a:f32, %b:f32) ->(%out:f32 delay 4)
hir.func.extern @sub_f32 at %t(%a:f32, %b:f32) ->(%out:f32 delay 4)
hir.func.extern @cmp_f32 at %t(%a:f32, %b:f32) ->(%out:f32 delay 4)
hir.func.extern @neg_f32 at %t(%a:f32, %b:f32) ->(%out:f32 delay 4)

func @unsharpMask(
%arg0: memref<32x32xf32> {hir.memref.ports = [#bram_r,#bram_w]},
%arg1: memref<32x32xf32> {hir.memref.ports = [#bram_r,#bram_w]}, 
%arg2: memref<8xf32>{hir.memref.ports = [#bram_r,#bram_w]}
) attributes {hwAccel} {

  %cst = arith.constant 0.000000e+00 : f32
  %cst_0 = arith.constant 4.000000e+00 : f32
  %cst_1 = arith.constant 3.000000e+00 : f32
  %cst_2 = arith.constant 1.000000e-03 : f32
  %0 = memref.alloca(){mem_kind="bram",hir.memref.ports = [#bram_r,#bram_w]}: memref<32x32xf32>
  %1 = memref.alloca(){mem_kind="bram",hir.memref.ports = [#bram_r,#bram_w]}: memref<32x32xf32>
  %2 = memref.alloca(){mem_kind="bram",hir.memref.ports = [#bram_r,#bram_w]}: memref<32x32xf32>
  %3 = memref.alloca(){mem_kind="bram",hir.memref.ports = [#bram_r,#bram_w]}: memref<32x32xf32>
  %4 = memref.alloca(){mem_kind="bram",hir.memref.ports = [#bram_r,#bram_w]}: memref<32x32xf32>
  %5 = memref.alloca(){mem_kind="bram",hir.memref.ports = [#bram_r,#bram_w]}: memref<32x32xf32>
  %6 = memref.alloca(){mem_kind="bram",hir.memref.ports = [#bram_r,#bram_w]}: memref<32x32xf32>
  %7 = memref.alloca(){mem_kind="bram",hir.memref.ports = [#bram_r,#bram_w]}: memref<32x32xf32>
  %8 = memref.alloca(){mem_kind="bram",hir.memref.ports = [#bram_r,#bram_w]}: memref<32x32xf32>
  affine.for %arg3 = 0 to 32 {
    affine.for %arg4 = 0 to 32 {
      %9 = affine.load %arg0[%arg3, %arg4] {result_delays=[1]} : memref<32x32xf32>
      affine.store %9, %4[%arg3, %arg4] : memref<32x32xf32>
      affine.store %9, %3[%arg3, %arg4] : memref<32x32xf32>
    }{II=1}
  }{II=36}

  affine.for %arg3 = 0 to 32 {
    affine.for %arg4 = 0 to 32 {
      %9 = affine.load %4[%arg3, %arg4] {result_delays=[1]} : memref<32x32xf32>
      affine.store %9, %1[%arg3, %arg4] : memref<32x32xf32>
      affine.store %9, %2[%arg3, %arg4] : memref<32x32xf32>
    }{II=1}
  }{II=36}

  affine.for %arg3 = 0 to 27 {
    affine.for %arg4 = 0 to 27 {
      affine.store %cst, %8[%arg3, %arg4] : memref<32x32xf32>
      affine.for %arg5 = 0 to 5 {
        %9 = affine.load %arg2[%arg5] {result_delays=[1]} : memref<8xf32>
        %10 = affine.load %3[%arg3, %arg4 + %arg5] {result_delays=[1]} : memref<32x32xf32>
        %11 = arith.mulf %9, %10  {result_delays=[4], hir_function=@mul_f32} : f32
        %12 = affine.load %8[%arg3, %arg4] {result_delays=[1]} : memref<32x32xf32>
        %13 = arith.addf %12, %11  {result_delays=[4], hir_function=@mul_f32} : f32
        affine.store %13, %8[%arg3, %arg4] : memref<32x32xf32>
      }{II=10}
    }{II=52}
  }{II=156}

  affine.for %arg3 = 0 to 27 {
    affine.for %arg4 = 0 to 27 {
      affine.store %cst, %7[%arg3, %arg4] : memref<32x32xf32>
      affine.for %arg5 = 0 to 5 {
        %9 = affine.load %arg2[%arg5] {result_delays=[1]} : memref<8xf32>
        %10 = affine.load %8[%arg3 + %arg5, %arg4] {result_delays=[1]} : memref<32x32xf32>
        %11 = arith.mulf %9, %10  {result_delays=[4], hir_function=@mul_f32} : f32
        %12 = affine.load %7[%arg3, %arg4] {result_delays=[1]} : memref<32x32xf32>
        %13 = arith.addf %12, %11  {result_delays=[4], hir_function=@mul_f32} : f32
        affine.store %13, %7[%arg3, %arg4] : memref<32x32xf32>
      }{II=10}
    }{II=52}
  }{II=156}

  affine.for %arg3 = 0 to 32 {
    affine.for %arg4 = 0 to 32 {
      %9 = affine.load %7[%arg3, %arg4] {result_delays=[1]} : memref<32x32xf32>
      affine.store %9, %6[%arg3, %arg4] : memref<32x32xf32>
      affine.store %9, %5[%arg3, %arg4] : memref<32x32xf32>
    }{II=1}
  }{II=36}
  affine.for %arg3 = 0 to 32 {
    affine.for %arg4 = 0 to 32 {
      %9 = affine.load %2[%arg3, %arg4] {result_delays=[1]} : memref<32x32xf32>
      %10 = arith.mulf %cst_0, %9  {result_delays=[4], hir_function=@mul_f32} : f32
      %11 = affine.load %6[%arg3, %arg4] {result_delays=[1]} : memref<32x32xf32>
      %12 = arith.mulf %cst_1, %11  {result_delays=[4], hir_function=@mul_f32} : f32
      %13 = arith.subf %10, %12 {result_delays=[4], hir_function=@sub_f32}: f32
      affine.store %13, %0[%arg3, %arg4] : memref<32x32xf32>
    }{II=5}
  }{II=165}

  //affine.for %arg3 = 0 to 32 {
  //  affine.for %arg4 = 0 to 32 {
  //    %9 = affine.load %1[%arg3, %arg4] {result_delays=[1]} : memref<32x32xf32>
  //    %10 = affine.load %5[%arg3, %arg4] {result_delays=[1]} : memref<32x32xf32>
  //    %11 = arith.subf %9, %10 {result_delays=[4], hir_function=@sub_f32}: f32
  //    %12 = arith.cmpf ugt, %11, %cst : f32
  //    %13 = scf.if %12 -> (f32) {
  //      scf.yield %11 : f32
  //    } else {
  //      %16 = arith.negf %11 : f32
  //      scf.yield %16 : f32
  //    }
  //    %14 = arith.cmpf ult, %13, %cst_2 : f32
  //    %15 = scf.if %14 -> (f32) {
  //      scf.yield %9 : f32
  //    } else {
  //      %16 = affine.load %0[%arg3, %arg4] {result_delays=[1]} : memref<32x32xf32>
  //      scf.yield %16 : f32
  //    }
  //    affine.store %15, %arg1[%arg3, %arg4] : memref<32x32xf32>
  //  }
  //}
  return
}
