#bram_w = {"wr_latency"=1}
#bram_r = {"rd_latency"=1}
#reg_w = {"wr_latency"=1}
#reg_r = {"rd_latency"=0}
hir.func.extern @mult_f32 at %t(%a:f32,%b:f32) ->(%result:f32 delay 3)
hir.func.extern @add_f32 at %t(%a:f32,%b:f32) ->(%result:f32 delay 2)

hir.func @convX at %t(%output:!hir.memref<32x32xf32> ports [#bram_w],
%img:!hir.memref<32x32xf32> ports [#bram_r],
%kernel:!hir.memref<8xf32> ports [#bram_r]){
  %0 = arith.constant 0:index
  %c0_i6 = hw.constant 0: i6
  %c1_i6 = hw.constant 1: i6
  %c32_i6 = hw.constant 32: i6
  %c0_i3 = hw.constant 0: i3
  %c1_i3 = hw.constant 1: i3
  %c5_i3 = hw.constant 5: i3

  hir.for %i:i6=%c0_i6 to %c32_i6 step %c1_i6 iter_time(%ti=%t){
    %tj_end=hir.for %j:i6=%c0_i6 to %c32_i6 step %c1_i6 iter_time(%tj=%ti){

      %r = hir.alloca "reg" :!hir.memref<(bank 1)xf32> ports [#reg_r,#reg_w]
      %i_i5 = comb.extract %i from 0 :(i6)->(i5)
      %j_i5 = comb.extract %j from 0 :(i6)->(i5)
      %tkk_end=hir.for %kk:i3=%c0_i3 to %c5_i3 step %c1_i3 iter_time(%tkk=%tj){
        %kk_i6 = comb.concat %c0_i3, %kk :i3,i3
        %jkk = comb.add %j,%kk_i6 :i6
        %jkk_i5 = comb.extract %jkk from 0 :(i6)->(i5)
        %img_val = hir.load %img[port 0][%i_i5,%jkk_i5] at %tkk : !hir.memref<32x32xf32> delay 1
        %kernel_val = hir.load %kernel[port 0][%kk] at %tkk : !hir.memref<8xf32> delay 1
        %p = hir.call @mult_f32(%kernel_val, %img_val) at %tkk+1 : !hir.func<(f32,f32)->(f32 delay 3)>
        %prev_val = hir.load %r[port 0][%0] at %tkk+4 : !hir.memref<(bank 1)xf32> delay 0
        %s = hir.call @add_f32(%p,%prev_val) at %tkk+4 :!hir.func<(f32,f32)->(f32 delay 2)>
        hir.store %s to %r[port 1][%0] at %tkk+6: !hir.memref<(bank 1)xf32> delay 1
        hir.next_iter at %tkk+2
      }
      //output[%i][%j] =
      %res = hir.load %r[port 0][%0] at %tkk_end+5 : !hir.memref<(bank 1)xf32> delay 1
      hir.store %res to %output[port 0][%i_i5,%j_i5] at %tkk_end +5 : !hir.memref<32x32xf32> delay 1
      hir.next_iter at %tkk_end
    }
    hir.next_iter at %tj_end
  }  
  hir.return
}
