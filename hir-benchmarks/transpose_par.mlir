#bram_r = {"rd_latency"=1}
#bram_w = {"wr_latency"=1}
hir.func @transpose_par at %t(
  %Ai :!hir.memref<16x(bank 16)xi32> ports [#bram_r],
  %Co : !hir.memref<(bank 16)x16xi32> ports [#bram_w]) {
    
    %c0_i5 = hw.constant 0:i5 
    %c1_i5 = hw.constant 1:i5 
    %c16_i5 = hw.constant 16:i5 
    %0 = arith.constant 0 :index
    %1 = arith.constant 1 :index
    %16 = arith.constant 16 :index
    hir.for %i : i5 = %c0_i5  to %c16_i5 step %c1_i5 
        iter_time(%ti = %t + 1 ){
      %tf =hir.for %j : index = %0  to %16 step %1 
          iter_time(%tj = %ti + 1){
        %i_i4 = comb.extract %i from 0:(i5)->(i4)
        %v =  hir.load %Ai[port 0][%i_i4, %j] at %tj 
          : !hir.memref<16x(bank 16)xi32>
        hir.store %v to %Co[port 0][%j, %i_i4] at %tj + 1 
          : !hir.memref<(bank 16)x16xi32>
        hir.next_iter at %tj + 1
      }//j-loop is spatial loop.
      hir.next_iter at %ti + 1
    }
    hir.return
}
