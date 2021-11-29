`default_nettype none
module tb_stencil_1d();
 tb_stencil_1d_hir  hir_inst();
 tb_stencil_1d_hls hls_inst();
endmodule

module tb_stencil_1d_hir();

  wire tstart;
  wire clk;
  wire rst;

  reg[31:0]  B_mem[255:0];
  wire [7:0] B_wr_addr;
  wire       B_wr_en;
  wire[31:0] B_wr_data;

  reg[7:0]  A_mem[255:0];
  wire [7:0] A_rd_addr;
  wire       A_rd_en;
  wire[7:0] A_rd_data;

  initial begin
      $readmemb("A_vector.mem",A_mem);
  end 

  clk_generator gen_clk_inst(clk,rst,tstart);

  memref_rd#(.WIDTH(8),.SIZE(256)) memref_rd_path(A_mem, A_rd_en, A_rd_addr, /*valid*/ , A_rd_data, clk);
  memref_wr#(.WIDTH(32),.SIZE(256)) memref_wr_path(B_mem, B_wr_en, B_wr_addr, B_wr_data, clk);

  histogram_hir histogram_hir_inst(
    .A_p0_addr_en  () ,
    .A_p0_addr_data(A_rd_addr) ,
    .A_p0_rd_en    (A_rd_en) ,
    .A_p0_rd_data  (A_rd_data) ,
    .B_p0_addr_en  () ,
    .B_p0_addr_data(B_wr_addr) ,
    .B_p0_wr_en    (B_wr_en) ,
    .B_p0_wr_data  (B_wr_data) ,
    .t             (tstart) ,
    .clk           (clk) ,
    .rst           (rst) 
  );

endmodule

module tb_stencil_1d_hls();

  wire tstart;
  wire clk;
  wire rst;

  reg[31:0]  B_mem[255:0];
  wire [7:0] B_wr_addr;
  wire       B_wr_en;
  wire[31:0] B_wr_data;

  reg[7:0]  A_mem[255:0];
  wire [7:0] A_rd_addr;
  wire       A_rd_en;
  wire[7:0] A_rd_data;

  initial begin
      $readmemb("A_vector.mem",A_mem);
  end 

  clk_generator gen_clk_inst(clk,rst,tstart);

  memref_rd#(.WIDTH(8),.SIZE(256)) memref_rd_path(A_mem, A_rd_en, A_rd_addr, /*valid*/ , A_rd_data, clk);
  memref_wr#(.WIDTH(32),.SIZE(256)) memref_wr_path(B_mem, B_wr_en, B_wr_addr, B_wr_data, clk);

  histogram_hls histogram_hls_inst (
    .A_ce0(A_rd_en),           
    .B_ce0(),           
    .B_we0(B_wr_en),           
    .ap_clk(clk),         
    .ap_rst(rst),         
    .ap_start(tstart),     
    .ap_done(),       
    .ap_idle(),       
    .ap_ready(),     
    .A_address0(A_rd_addr), 
    .A_q0(A_rd_data),             
    .B_address0(B_wr_addr), 
    .B_d0(B_wr_data)              
  );

endmodule
