hir.func @convX at %t(%output:!hir.memref<32x32xf32> ports [#bram_w],
%img:!hir.memref<32x32xf32> ports [#bram_r],
%kernel:!hir.memref<8xf32> ports [#bram_r]){
  %0 = arith.constant 0:index

  hir.for %i:i6=%0 to %32 step %1{
  hir.for %j:i6=%0 to %32 step %1{
    %r = hir.alloca "reg" :!hir.memref<(bank 1)xf32> ports [#reg_r,#reg_w]
  hir.for %kk:i3=%0 to %5 step %1{
    %kernel_val = hir.load %kernel[port 0][%kk] at %tkk : !hir.memref<5xf32>
    %img_val = hir.load %img[port 0][%i,%j+%kk] at %tkk : !hir.memref<32x32xf32>
    %p = hir.call @mult_f32(%kernel_val, %img_val) at %tkk+1 : !hir.func<(float,float)->(float delay 3)>
    %prev_val = hir.load %r[port 0][%0] at %tkk+4 : !hir.memref<32x32xf32>
    %s = hir.call @add_f32(%p,%prev_val) at %tkk+4 :!hir.func<(f32,f32)->(f32 delay 2)>
    hir.store %s to %r[port 1][%0] : !hir.memref<(bank 1)xf32>
  }
output[%i][%j] =
  }
  }  
}
