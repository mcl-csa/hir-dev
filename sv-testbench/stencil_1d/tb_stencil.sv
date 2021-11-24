`default_nettype none
module tb_stencil_1d();
 tb_stencil_1d_mlir  inst1();
 tb_stencil_1d_hls inst2();
endmodule

module tb_stencil_1d_hir();

  wire tstart;
  wire clk;
  wire rst;


  reg[31:0]  Co_mem[63:0];
  wire [5:0] Co_wr_addr;
  wire       Co_wr_en;
  wire[31:0] Co_wr_data;

  reg[31:0]  Ai_mem[63:0];
  wire [5:0] Ai_rd_addr;
  wire       Ai_rd_en;
  wire[31:0] Ai_rd_data;

  initial begin
      $readmemb("Ai_vector.mem",Ai_mem);
  end 


  clk_generator gen_clk_inst(clk,rst,tstart);

  memref_rd#(.WIDTH(32),.SIZE(64)) memref_rd_path(Ai_mem, Ai_rd_en, Ai_rd_addr, /*valid*/ , Ai_rd_data, clk);
  memref_wr#(.WIDTH(32),.SIZE(64)) memref_wr_path(Bw_mem, Bw_wr_en, Bw_wr_addr, Bw_wr_data, clk);

stencil_1d_hir stencil_1d_hir_inst(	
  .w0(2), 
  .w1(3),
  .Ai_p0_rd_data(Ai_rd_data), 
  .Ai_p0_addr_en(/*unconnected*/),
  .Ai_p0_addr_data(Ai_rd_addr),
  .Ai_p0_rd_en(Ai_rd_en), 
  .Bw_p0_addr_en(/*unconnected*/),
  .Bw_p0_addr_data(Bw_wr_addr),
  .Bw_p0_wr_en(Bw_wr_en),
  .Bw_p0_wr_data(Bw_wr_data),
  .t(tstart), 
  .clk(clk), 
  .rst(rst)
);


endmodule


module tb_stencil_1d_hls();

  wire tstart;
  wire clk;
  wire rst;


  reg[31:0]  Co_mem[63:0];
  wire [5:0] Co_wr_addr;
  wire       Co_wr_en;
  wire[31:0] Co_wr_data;

  reg[31:0]  Ai_mem[63:0];
  wire [5:0] Ai_rd_addr;
  wire       Ai_rd_en;
  wire[31:0] Ai_rd_data;

  initial begin
      $readmemb("Ai_vector.mem",Ai_mem);
  end 


  clk_generator gen_clk_inst(clk,rst,tstart);

  memref_rd#(.WIDTH(32),.SIZE(64)) memref_rd_path(Ai_mem, Ai_rd_en, Ai_rd_addr, /*valid*/ , Ai_rd_data, clk);
  memref_wr#(.WIDTH(32),.SIZE(64)) memref_wr_path(Bw_mem, Bw_wr_en, Bw_wr_addr, Bw_wr_data, clk);

stencil_1d_hls stencil_1d_hls_inst(	
  .w0(2), 
  .w1(3),
  .Ai_p0_rd_data(Ai_rd_data), 
  .Ai_p0_addr_en(/*unconnected*/),
  .Ai_p0_addr_data(Ai_rd_addr),
  .Ai_p0_rd_en(Ai_rd_en), 
  .Bw_p0_addr_en(/*unconnected*/),
  .Bw_p0_addr_data(Bw_wr_addr),
  .Bw_p0_wr_en(Bw_wr_en),
  .Bw_p0_wr_data(Bw_wr_data),
  .t(tstart), 
  .clk(clk), 
  .rst(rst)
);


endmodule



