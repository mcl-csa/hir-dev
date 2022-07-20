#bram_r = {"rd_latency"=1}
#reg_r = {"rd_latency"=0}
#bram_w = {"wr_latency"=1}
#reg_w = {"wr_latency"=1}

hir.func.extern @mul_f32 at %t(%a:i32, %b:i32) ->(%out:i32 delay 8) {argNames=["a","b","t"], resultNames=["out"]}
hir.func.extern @add_f32 at %t(%a:i32, %b:i32) ->(%out:i32 delay 11){argNames=["a","b","t"], resultNames=["out"]}

hir.func.extern @sub_f32 at %t(%a:i32, %b:i32) ->(%out:i32 delay 11){argNames=["a","b","t"], resultNames=["out"]}

hir.func.extern @ugt_f32 at %t(%a:i32, %b:i32) ->(%out:i1 delay 2){argNames=["a","b","t"], resultNames=["out"]}

hir.func.extern @ult_f32 at %t(%a:i32, %b:i32) ->(%out:i1 delay 2){argNames=["a","b","t"], resultNames=["out"]}

hir.func.extern @neg_f32 at %t(%a:i32) ->(%out:i32){argNames=["a","t"], resultNames=["out"]}

hir.func.extern @select_f32 at %t(%cmp:i32,%a:i32,%b:i32) ->(%out:i32){argNames=["cmp","a","b","t"], resultNames=["out"]}

hir.func.extern @extsi_i1_f32 at %t(%a:i1) ->(%out:i32){argNames=["a","t"], resultNames=["out"]}



  func @unsharpMask(
    %arg0: memref<32x32xf32> {hir.memref.ports = [#bram_r]},
    %arg1: memref<32x32xf32> {hir.memref.ports = [#bram_w]},
    %arg2: memref<8xf32>     {hir.memref.ports = [#bram_r]}, 
    %arg3: memref<8xf32>     {hir.memref.ports = [#bram_r]}
  ) attributes {hwAccel,argNames=["img","mask","kernelX","kernelY"]} {

    %cst = arith.constant 0.000000e+00 : f32
    %cst_0 = arith.constant 4.000000e+00 : f32
    %cst_1 = arith.constant 3.000000e+00 : f32
    %cst_2 = arith.constant 1.000000e-03 : f32
    %0 = memref.alloca(){names=["bram0"],mem_kind="bram",hir.memref.ports = [#bram_r,#bram_w]}: memref<32x32xf32>
    %1 = memref.alloca(){mem_kind="bram",hir.memref.ports = [#bram_r,#bram_w]}: memref<32x32xf32>
    %2 = memref.alloca(){mem_kind="bram",hir.memref.ports = [#bram_r,#bram_w]}: memref<32x32xf32>
    %3 = memref.alloca(){mem_kind="bram",hir.memref.ports = [#bram_r,#bram_w]}: memref<32x32xf32>
    %4 = memref.alloca(){mem_kind="bram",hir.memref.ports = [#bram_r,#bram_w]}: memref<32x32xf32>
    %5 = memref.alloca(){mem_kind="bram",hir.memref.ports = [#bram_r,#bram_w]}: memref<32x32xf32>
    %6 = memref.alloca(){mem_kind="bram",hir.memref.ports = [#bram_r,#bram_w]}: memref<32x32xf32>
    %7 = memref.alloca(){mem_kind="bram",hir.memref.ports = [#bram_r,#bram_w]}: memref<32x32xf32>
    %8 = memref.alloca(){mem_kind="bram",hir.memref.ports = [#bram_r,#bram_w]}: memref<32x32xf32>
    affine.for %arg4 = 0 to 32 {
      affine.for %arg5 = 0 to 32 {
        %9 = affine.load %arg0[%arg4, %arg5] {result_delays=[1]} : memref<32x32xf32>
        affine.store %9, %4[%arg4, %arg5] : memref<32x32xf32>
        affine.store %9, %3[%arg4, %arg5] : memref<32x32xf32>
      }{II=1}
    }{II=36}
    affine.for %arg4 = 0 to 32 {
      affine.for %arg5 = 0 to 32 {
        %9 = affine.load %4[%arg4, %arg5] {result_delays=[1]} : memref<32x32xf32>
        affine.store %9, %1[%arg4, %arg5] : memref<32x32xf32>
        affine.store %9, %2[%arg4, %arg5] : memref<32x32xf32>
      }{II=1}
    }{II=36}
    affine.for %arg4 = 0 to 27 {
      affine.for %arg5 = 0 to 27 {
        affine.store %cst, %8[%arg4, %arg5] : memref<32x32xf32>
        affine.for %arg6 = 0 to 5 {
          %9 = affine.load %arg2[%arg6] {result_delays=[1]} : memref<8xf32>
          %10 = affine.load %3[%arg4, %arg5 + %arg6] {result_delays=[1]} : memref<32x32xf32>
          %11 = arith.mulf %9, %10  {result_delays=[8], hir_function=@mul_f32} : f32
          %12 = affine.load %8[%arg4, %arg5] {result_delays=[1]} : memref<32x32xf32>
          %13 = arith.addf %12, %11  {result_delays=[11], hir_function=@add_f32} : f32
          affine.store %13, %8[%arg4, %arg5] : memref<32x32xf32>
        }{II=13}
      }{II=52}
    }{II=1456}
    affine.for %arg4 = 0 to 27 {
      affine.for %arg5 = 0 to 27 {
        affine.store %cst, %7[%arg4, %arg5] : memref<32x32xf32>
        affine.for %arg6 = 0 to 5 {
          %9 = affine.load %arg3[%arg6] {result_delays=[1]} : memref<8xf32>
          %10 = affine.load %8[%arg4 + %arg6, %arg5] {result_delays=[1]} : memref<32x32xf32>
          %11 = arith.mulf %9, %10  {result_delays=[8], hir_function=@mul_f32} : f32
          %12 = affine.load %7[%arg4, %arg5] {result_delays=[1]} : memref<32x32xf32>
          %13 = arith.addf %12, %11  {result_delays=[11], hir_function=@add_f32} : f32
          affine.store %13, %7[%arg4, %arg5] : memref<32x32xf32>
        }{II=13}
      }{II=52}
    }{II=1456}
    affine.for %arg4 = 0 to 32 {
      affine.for %arg5 = 0 to 32 {
        %9 = affine.load %7[%arg4, %arg5] {result_delays=[1]} : memref<32x32xf32>
        affine.store %9, %6[%arg4, %arg5] : memref<32x32xf32>
        affine.store %9, %5[%arg4, %arg5] : memref<32x32xf32>
      }{II=1}
    }{II=36}
    affine.for %arg4 = 0 to 32 {
      affine.for %arg5 = 0 to 32 {
        %9 = affine.load %2[%arg4, %arg5] {result_delays=[1]} : memref<32x32xf32>
        %10 = arith.mulf %cst_0, %9  {result_delays=[8], hir_function=@mul_f32} : f32
        %11 = affine.load %6[%arg4, %arg5] {result_delays=[1]} : memref<32x32xf32>
        %12 = arith.mulf %cst_1, %11  {result_delays=[8], hir_function=@mul_f32} : f32
        %13 = arith.subf %10, %12  {result_delays=[11],hir_function=@sub_f32} : f32
        affine.store %13, %0[%arg4, %arg5] : memref<32x32xf32>
      }{II=1}
    }{II=36}
    affine.for %arg4 = 0 to 32 {
      affine.for %arg5 = 0 to 32 {
        %9 = affine.load %1[%arg4, %arg5] {result_delays=[1]} : memref<32x32xf32>
        %10 = affine.load %5[%arg4, %arg5] {result_delays=[1]} : memref<32x32xf32>
        %11 = arith.subf %9, %10  {result_delays=[11],hir_function=@sub_f32} : f32
        %12 = arith.cmpf ugt, %11, %cst  {result_delays=[2],hir_function=@ugt_f32} : f32
        %13 = arith.extsi %12 {result_delays=[0],hir_function=@extsi_i1_i32}: i1 to i32
        %14 = arith.negf %11  {result_delays=[0],hir_function=@neg_f32} : f32
        %15 = call @select(%13, %11, %14) {result_delays=[0],hir_function=@select_f32}: (i32, f32, f32) -> f32
        %16 = arith.cmpf ult, %15, %cst_2  {result_delays=[2],hir_function=@ult_f32} : f32
        %17 = arith.extsi %16 {result_delays=[0],hir_function=@extsi_i1_f32}: i1 to i32
        %18 = affine.load %1[%arg4, %arg5] {result_delays=[1]} : memref<32x32xf32>
        %19 = affine.load %0[%arg4, %arg5] {result_delays=[1]} : memref<32x32xf32>
        %20 = call @select(%17, %18, %19) {result_delays=[0],hir_function=@select_f32}: (i32, f32, f32) -> f32
        affine.store %20, %arg1[%arg4, %arg5] : memref<32x32xf32>
      }{II=1}
    }{II=36}
    return
  }

  func private @select(i32, f32, f32) -> f32 attributes {llvm.linkage = #llvm.linkage<external>}
