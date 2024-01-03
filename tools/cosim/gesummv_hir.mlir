#bram_r = {"rd_latency"=1}
#reg_r = {"rd_latency"=0}
#bram_w = {"wr_latency"=1}
#reg_w = {"wr_latency"=1}

hir.func.extern @mul_i32 at %t(%a:i32, %b:i32) ->(%out:i32 delay 1) {argNames = ["a","b","t"],resultNames=["out"]}
hir.func.extern @add_i32 at %t(%a:i32, %b:i32) ->(%out:i32){argNames = ["a","b","t"],resultNames=["out"]}

func.func @gesummv_hir(
%arg0: i32{hir.delay=0} ,
%arg1: i32{hir.delay=0} ,
%arg2: memref<8xi32>   {hir.memref.ports=[#bram_w]} ,
%arg3: memref<8x8xi32> {hir.memref.ports=[#bram_r]} ,
%arg4: memref<8x8xi32> {hir.memref.ports=[#bram_r]} ,
%arg5: memref<8xi32>   {hir.memref.ports=[#bram_r]} ,
%arg6: memref<8xi32>  {hir.memref.ports=[#bram_w]})
attributes {hwAccel,argNames=["alpha","beta","tmp","A","B","X","Y"]} {
  %c0_i32 = arith.constant 0 : i32
  %1 = memref.alloca() {mem_kind="reg",hir.memref.ports = [#reg_r,#reg_w]}: memref<1xi32>
  %2 = memref.alloca() {mem_kind="reg",hir.memref.ports = [#reg_r,#reg_w]}: memref<1xi32>
  affine.for %arg7 = 0 to 8 {
    affine.store %c0_i32, %2[0] : memref<1xi32>
    affine.store %c0_i32, %1[0] : memref<1xi32>
    affine.for %arg8 = 0 to 8 {
      %8 = affine.load %arg3[%arg7, %arg8] {result_delays=[1]} : memref<8x8xi32>
      %9 = affine.load %arg5[%arg8] {result_delays=[1]} : memref<8xi32>
      %10 = arith.muli %8, %9  {result_delays=[1], hir.func=@mul_i32} : i32
      %11 = affine.load %arg4[%arg7, %arg8] {result_delays=[1]} : memref<8x8xi32>
      %12 = arith.muli %11, %9  {result_delays=[1], hir.func=@mul_i32} : i32
      %13 = affine.load %2[0] {result_delays=[0]} : memref<1xi32>
      %14 = arith.addi %13, %10  {result_delays=[0], hir.func=@add_i32} : i32
      affine.store %14, %2[0] : memref<1xi32>
      %15 = affine.load %1[0] {result_delays=[0]} : memref<1xi32>
      %16 = arith.addi %15, %12  {result_delays=[0], hir.func=@add_i32} : i32
      affine.store %16, %1[0] : memref<1xi32>
    }{II=1}
    %3 = affine.load %2[0] {result_delays=[0]} : memref<1xi32>
    affine.store %3, %arg2[%arg7] : memref<8xi32>
    %4 = affine.load %1[0] {result_delays=[0]} : memref<1xi32>
    %5 = arith.muli %arg0, %3  {result_delays=[1], hir.func=@mul_i32} : i32
    %6 = arith.muli %arg1, %4  {result_delays=[1], hir.func=@mul_i32} : i32
    %7 = arith.addi %5, %6  {result_delays=[0], hir.func=@add_i32} : i32
    affine.store %7, %arg6[%arg7] : memref<8xi32>
  }{II=18}
  return
}
