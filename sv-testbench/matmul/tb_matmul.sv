`include "../tb_helpers.sv"
`default_nettype none

module tb_matmul();
  tb_matmul_hir tb_hir();
  tb_matmul_hls tb_hls();
endmodule

module tb_matmul_hir();
  reg[31:0] A_mem[255:0];
  wire[7:0] A_addr     ;
  wire A_rd_en         ;
  reg[31:0] A_rd_data  ;

  reg[31:0] B_mem[255:0];
  wire[7:0] B_addr     ;
  wire B_rd_en         ;
  wire[31:0] B_rd_data ;

  reg[31:0] C_mem[255:0];
  wire[7:0] C_addr     ;
  wire C_wr_en         ;
  wire[31:0] C_wr_data ;

  wire tstart;
  wire clk;
  wire rst;

  initial begin
      $readmemb("A_vector.mem",A_mem);
      $readmemb("B_vector.mem",B_mem);
  end

  clk_generator gen_clk_inst(clk,rst,tstart);
  
  memref_rd#(.WIDTH(32),.SIZE(256)) 
  port_A_rd(A_mem,A_rd_en, A_addr,/*valid*/ ,A_rd_data,clk);

  memref_rd#(.WIDTH(32),.SIZE(256)) 
  port_B_rd(B_mem,B_rd_en, B_addr,/*valid*/ ,B_rd_data,clk);

  memref_wr#(.WIDTH(32),.SIZE(256)) 
  port_C_wr(C_mem,C_wr_en, C_addr,C_wr_data,clk);

  matmul_hir matmul_hir_inst(
    .Ai_p0_addr_data (A_addr) ,
    .Ai_p0_addr_en (/*unconnected*/) ,
    .Ai_p0_rd_en (A_rd_en) ,
    .Ai_p0_rd_data (A_rd_data) ,
    .Bi_p0_addr_en (/*unconnected*/),
    .Bi_p0_addr_data (B_addr) ,
    .Bi_p0_rd_en (B_rd_en) ,
    .Bi_p0_rd_data (B_rd_data) ,
    .Co_p0_addr_en (/*unconnected*/),
    .Co_p0_addr_data (C_addr) ,
    .Co_p0_wr_en (C_wr_en) ,
    .Co_p0_wr_data (C_wr_data) ,
    .t (tstart) ,
    .clk (clk) ,
    .rst (rst) 
  );
endmodule

module tb_matmul_hls();
  reg[31:0] A_mem[255:0];
  wire[7:0] A_addr     ;
  wire A_rd_en         ;
  reg[31:0] A_rd_data  ;

  reg[31:0] B_mem[255:0];
  wire[7:0] B_addr     ;
  wire B_rd_en         ;
  wire[31:0] B_rd_data ;

  reg[31:0] C_mem[255:0];
  wire[7:0] C_addr     ;
  wire C_wr_en         ;
  wire[31:0] C_wr_data ;

  wire tstart;
  wire clk;
  wire rst;

  initial begin
      $readmemb("A_vector.mem",A_mem);
      $readmemb("B_vector.mem",B_mem);
  end

  clk_generator gen_clk_inst(clk,rst,tstart);
  
  memref_rd#(.WIDTH(32),.SIZE(256)) 
  port_A_rd(A_mem,A_rd_en, A_addr,/*valid*/ ,A_rd_data,clk);

  memref_rd#(.WIDTH(32),.SIZE(256)) 
  port_B_rd(B_mem,B_rd_en, B_addr,/*valid*/ ,B_rd_data,clk);

  memref_wr#(.WIDTH(32),.SIZE(256)) 
  port_C_wr(C_mem,C_wr_en, C_addr,C_wr_data,clk);

  matmul_hls_0 matmul_hls_inst(
  .Ai_ce0(A_rd_en),            // output wire Ai_ce0
  .Bi_ce0(B_rd_en),            // output wire Bi_ce0
  .Co_ce0(C_wr_en),            // output wire Co_ce0
  .Co_we0(C_wr_en),            // output wire Co_we0
  .ap_clk(clk),            // input wire ap_clk
  .ap_rst(rst),            // input wire ap_rst
  .ap_start(tstart),        // input wire ap_start
  .ap_done(),          // output wire ap_done
  .ap_idle(),          // output wire ap_idle
  .ap_ready(),        // output wire ap_ready
  .Ai_address0(A_addr),  // output wire [7 : 0] Ai_address0
  .Ai_q0(A_rd_data),              // input wire [31 : 0] Ai_q0
  .Bi_address0(B_addr),  // output wire [7 : 0] Bi_address0
  .Bi_q0(B_rd_data),              // input wire [31 : 0] Bi_q0
  .Co_address0(C_addr),  // output wire [7 : 0] Co_address0
  .Co_d0(C_wr_data)              // output wire [31 : 0] Co_d0
  );
endmodule

