`default_nettype none
module tb_transpose();
 tb_transpose_hir  hir_inst();
 tb_transpose_hls hls_inst();
endmodule

module tb_transpose_hir();

  wire tstart;
  wire clk;
  wire rst;


  reg[31:0]  Co_mem[255:0];
  wire [7:0] Co_wr_addr;
  wire       Co_wr_en;
  wire[31:0] Co_wr_data;

  reg[31:0]  Ai_mem[255:0];
  wire [7:0] Ai_rd_addr;
  wire       Ai_rd_en;
  wire[31:0] Ai_rd_data;

  initial begin
      $readmemb("Ai_vector.mem",Ai_mem);
  end 


  clk_generator gen_clk_inst(clk,rst,tstart);

  memref_rd#(.WIDTH(32),.SIZE(256)) memref_rd_path(Ai_mem,Ai_rd_en, Ai_rd_addr,/*valid*/ ,Ai_rd_data,clk);
  memref_wr#(.WIDTH(32),.SIZE(256)) memref_wr_path(Co_mem,Co_wr_en, Co_wr_addr,Co_wr_data,clk);

transpose_hir transpose_hir_inst(
  .Ai_p0_rd_data(Ai_rd_data),
  .Ai_p0_addr_en(/*unconnected*/),
  .Ai_p0_addr_data(Ai_rd_addr),
  .Ai_p0_rd_en (Ai_rd_en), 
  .Co_p0_addr_en(/*unconnected*/),
  .Co_p0_addr_data(Co_wr_addr),
  .Co_p0_wr_en(Co_wr_en),
  .Co_p0_wr_data(Co_wr_data),
  .t(tstart), 
  .clk(clk), 
  .rst(rst)
);
endmodule


module tb_transpose_hls();

  wire tstart;
  wire clk;
  wire rst;


  reg[31:0]  Co_mem[255:0];
  wire [7:0] Co_wr_addr;
  wire       Co_wr_en;
  wire[31:0] Co_wr_data;

  reg[31:0]  Ai_mem[255:0];
  wire [7:0] Ai_rd_addr;
  wire       Ai_rd_en;
  wire[31:0] Ai_rd_data;

  initial begin
      $readmemb("Ai_vector.mem",Ai_mem);
  end 


  clk_generator gen_clk_inst(clk,rst,tstart);

  memref_rd#(.WIDTH(32),.SIZE(256)) memref_rd_path(Ai_mem,Ai_rd_en, Ai_rd_addr,/*valid*/ ,Ai_rd_data,clk);
  memref_wr#(.WIDTH(32),.SIZE(256)) memref_wr_path(Co_mem,Co_wr_en, Co_wr_addr,Co_wr_data,clk);

transpose_hls_0 transpose_hls_inst(
  .A_ce0(Ai_rd_en),        
  .B_ce0(),                
  .B_we0(Co_wr_en),        
  .ap_clk(clk),            
  .ap_rst(rst),            
  .ap_start(tstart),       
  .ap_done(),              
  .ap_idle(),              
  .ap_ready(),             
  .A_address0(Ai_rd_addr), 
  .A_q0(Ai_rd_data),       
  .B_address0(Co_wr_addr), 
  .B_d0(Co_wr_data)        
);
endmodule


