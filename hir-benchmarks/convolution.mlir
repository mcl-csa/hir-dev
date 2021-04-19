// RUN: circt-opt %s
#bram_r = {"rd"=1}
#bram_w = {"wr"=1}
#reg_r = {"rd"=0}
#reg_w = {"wr"=1}
hir.func @convolution at %t(
%img :!hir.memref<8x8xi32, #bram_r>,
%kernel :!hir.memref<2x2xi32, #bram_r>,
%output : !hir.memref<8x8xi32,#bram_w>){

  %val_r,%val_w = hir.alloca("reg") :!hir.memref<1xi32,[0], #reg_r>,
  !hir.memref<1xi32,[0], #reg_w>

  %0 = hir.constant  (0):!hir.const  
  %1 = hir.constant  (1):!hir.const  
  %2 = hir.constant  (2):!hir.const  
  %3 = hir.constant  (3):!hir.const  
  %4 = hir.constant  (4):!hir.const  
  %7 = hir.constant (7):!hir.const  

  //Read from input. Update line buffer. Input values to each row of window.
  hir.for %i : i3 = %0 : !hir.const to %7 : !hir.const 
  step %1:!hir.const iter_time(%ti = %t + %1 ){

    %tj=hir.for %j : i3 = %0 : !hir.const to %7 : !hir.const 
    step %1:!hir.const iter_time(%tj = %ti + %1 ){

      hir.store %0 to %val_w[%0] at %tj + %3
      : (!hir.const, !hir.memref<1xi32,[0],#reg_w>[!hir.const])

      %ti1=hir.for %i1 : i3 = %0 : !hir.const to %2 : !hir.const 
      step %1:!hir.const iter_time(%ti1 = %tj + %1 ){

        %tj1=hir.for %j1 : i3 = %0 : !hir.const to %2 : !hir.const 
        step %1:!hir.const iter_time(%tj1 = %ti1 + %1 ){
          %idx1 = hir.add(%i,%i1) : (i3,i3)->(i3)

          %idx2 = hir.add(%j,%j1) : (i3,i3)->(i3)

          %v1 = hir.load %img[%idx1,%idx2] at %tj1  
          : !hir.memref<8x8xi32,#bram_r>[i3,i3] -> i32

          %v2 = hir.load %kernel[%i1,%j1] at %tj1  
          : !hir.memref<2x2xi32,#bram_r>[i3,i3] -> i32

          %mul = hir.call @i32mult_dsp48(%v1,%v2) at %tj1+%1:
          !hir.func<(i32,i32) -> (i32 delay 2)>

          %v3 = hir.load %val_r[%0] at %tj1 + %3
          : !hir.memref<1xi32,[0], #reg_r>[!hir.const] -> i32

          %res = hir.add(%mul,%v3):(i32,i32)->(i32)

          hir.store %res to %val_w[%0] at %tj1+%3
          : (i32, !hir.memref<1xi32,[0],#reg_w>[!hir.const])

          hir.yield at %tj1 + %1
        }
        hir.yield at %tj1 + %1
      }

      %v = hir.load %val_r[%0] at %ti1 + %3
      : !hir.memref<1xi32,[0], #reg_r>[!hir.const] -> i32
      %i3 = hir.delay %i by %3 at %ti1 : i3 -> i3
      %j3 = hir.delay %j by %3 at %ti1 : i3 -> i3
      hir.store %v to %output[%i3,%j3] at %ti1+%3
      : (i32, !hir.memref<8x8xi32,#bram_w>[i3,i3])
      hir.yield at %ti1 + %1
    }
    hir.yield at %tj + %1
  }
  hir.return
}

