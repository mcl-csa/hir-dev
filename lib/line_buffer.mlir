#bram_r = {"rd_latency" = 1}
#bram_w = {"wr_latency" = 1}
#reg_r = {"rd_latency" = 0}
#reg_w = {"wr_latency" = 1}

hir.func.extern @fifo_push at %t (
%v :f32,
%wr_idx :!hir.memref<(bank 1)xi6> ports[#reg_r,#reg_w],
%buffer :!hir.memref<64xf32> ports [#bram_w]
)

hir.func.extern @fifo_pop at %t (
%rd_idx :!hir.memref<(bank 1)xi6> ports[#reg_r,#reg_w],
%buffer :!hir.memref<64xf32> ports [#bram_r]
) -> (%result : f32 delay 1)

hir.func @row_buffer_slide at %t(
%v : f32,
%rd_idx : !hir.memref<(bank 1)xi6> ports [#reg_r,#reg_w],
%wr_idx :!hir.memref<(bank 1)xi6> ports [#reg_r,#reg_w],
%ram_buffer : !hir.memref<64xf32> ports [#bram_r,#bram_w],
%reg_buffer : !hir.memref<(bank 5)xf32> ports [#reg_r,#reg_w]
) -> (%result:f32 delay 1){
  
  %0 = arith.constant 0:index
  %1 = arith.constant 1:index
  %4 = arith.constant 4:index
  %5 = arith.constant 5:index

  hir.call @fifo_push(%v, %wr_idx, %ram_buffer) at %t : !hir.func<(f32, !hir.memref<(bank 1)xi6> ports [#reg_r,#reg_w], !hir.memref<64xf32> ports [#bram_w])>
  %v0 =  hir.call @fifo_pop(%rd_idx, %ram_buffer) at %t : !hir.func<(!hir.memref<(bank 1)xi6> ports [#reg_r,#reg_w], !hir.memref<64xf32> ports [#bram_w]) ->(f32 delay 1)>

  hir.store %v0 to %reg_buffer[port 1][%0] at %t+1 :!hir.memref<(bank 5)xf32>
   
  hir.for %i:index =%1 to %5 step %1 iter_time(%ti=%t+1){
    %iMinus1 = arith.subi %i, %1 :index
    %value = hir.load %reg_buffer[port 0][%iMinus1] at %ti
    : !hir.memref<(bank 5)xf32>
    hir.store %value to %reg_buffer[port 1][%i] at %ti
    : !hir.memref<(bank 5)xf32>
    hir.next_iter at %ti
  }
  %value = hir.load %reg_buffer[port 0][%4] at %t+1 :!hir.memref<(bank 5)xf32>
  
  hir.return (%value) :(f32)
}
