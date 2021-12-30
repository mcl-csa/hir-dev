hir.func @convX at %t(%output:!hir.memref<32x32xf32> ports [#bram_w],
%img:!hir.memref<32x32xf32> ports [#bram_r],
%kernel:!hir.memref<8xf32> ports [#bram_r]){

  hir.for %i:i6=%0 to %32 step %1{
  hir.for %j:i6=%0 to %32 step %1{
    %r = hir.alloca "reg" :!hir.memref<(bank 1)xf32> ports [#reg_r,#reg_w]
  hir.for %kk:i3=%0 to %5 step %1{
    %kernel_val = hir.load %kernel[port 0][%kk] at %tkk : !hir.memref<5xf32>
    %img_val = hir.load %img[port 0][%i,%j+%kk] at %tkk : !hir.memref<32x32xf32>
    %result = hir.call(%kernel_val, %img_val) at %tkk+1 : !hir.func<(float,float)->(float delay 3)>
    
  }
output[%i][%j] =
  }
  }  
}
