`default_nettype none
`define Alpha 1
`define Beta 1
module tb_jacobi_2d();
 tb_jacobi_2d_hir  jacobi_2d_hir_inst();
 tb_jacobi_2d_hls jacobi_2d_hls_inst();
endmodule

module tb_jacobi_2d_hir();

  wire tstart;
  wire clk;
  wire rst;


  reg[31:0] A_mem[1023:0];
  wire [9:0] A_rd_addr;
  wire       A_rd_en;
  wire[31:0] A_rd_data;

  wire [9:0] A_wr_addr;
  wire       A_wr_en;
  wire[31:0] A_wr_data;

  reg[31:0] B_mem[1023:0];
  wire [9:0] B_rd_addr;
  wire       B_rd_en;
  wire[31:0] B_rd_data;

  wire [9:0] B_wr_addr;
  wire       B_wr_en;
  wire[31:0] B_wr_data;

  initial begin
      $readmemb("A.mem",A_mem);
      $readmemb("B.mem",B_mem);
  end
  
  clk_generator gen_clk_inst(clk,rst,tstart);

  memref_rd#(.WIDTH(32),.SIZE(1024)) memref_rd_A(A_mem, A_rd_en, A_rd_addr, /*valid*/ , A_rd_data, clk);
  memref_wr#(.WIDTH(32),.SIZE(1024)) memref_wr_A(A_mem,A_wr_en, A_wr_addr,A_wr_data,clk);
  memref_rd#(.WIDTH(32),.SIZE(1024)) memref_rd_B(B_mem,B_rd_en, B_rd_addr,/*valid*/ ,B_rd_data,clk);
  memref_wr#(.WIDTH(32),.SIZE(1024)) memref_wr_B(B_mem,B_wr_en, B_wr_addr,B_wr_data,clk);

  jacobi_2d_hir hir_inst(
    .A_p0_addr_data ( A_rd_addr       ) ,
    .A_p0_addr_en   ( /*unconnected*/ ) ,
    .A_p0_rd_data   ( A_rd_data       ) ,
    .A_p0_rd_en     ( A_rd_en         ) ,
    .A_p1_addr_data ( A_wr_addr       ) ,
    .A_p1_addr_en   ( /*unconnected*/ ) ,
    .A_p1_wr_data   ( A_wr_data       ) ,
    .A_p1_wr_en     ( A_wr_en         ) ,

    .B_p0_addr_data ( B_rd_addr       ) ,
    .B_p0_addr_en   ( /*unconnected*/ ) ,
    .B_p0_rd_data   ( B_rd_data       ) ,
    .B_p0_rd_en     ( B_rd_en         ) ,
    .B_p1_addr_data ( B_wr_addr       ) ,
    .B_p1_addr_en   ( /*unconnected*/ ) ,
    .B_p1_wr_data   ( B_wr_data       ) ,
    .B_p1_wr_en     ( B_wr_en         ) ,

    .t              ( tstart          ) ,
    .clk            ( clk             ) ,
    .rst            ( rst             )
  );

endmodule


module tb_jacobi_2d_hls();

  wire tstart;
  wire clk;
  wire rst;


  reg[31:0] A_mem[1023:0];
  wire [9:0] A_rd_addr;
  wire       A_rd_en;
  wire[31:0] A_rd_data;

  wire [9:0] A_wr_addr;
  wire       A_wr_en;
  wire[31:0] A_wr_data;

  reg[31:0] B_mem[1023:0];
  wire [9:0] B_rd_addr;
  wire       B_rd_en;
  wire[31:0] B_rd_data;

  wire [9:0] B_wr_addr;
  wire       B_wr_en;
  wire[31:0] B_wr_data;

  initial begin
      $readmemb("A.mem",A_mem);
      $readmemb("B.mem",B_mem);
  end
  
  clk_generator gen_clk_inst(clk,rst,tstart);

  memref_rd#(.WIDTH(32),.SIZE(1024)) memref_rd_A(A_mem, A_rd_en, A_rd_addr, /*valid*/ , A_rd_data, clk);
  memref_wr#(.WIDTH(32),.SIZE(1024)) memref_wr_A(A_mem,A_wr_en, A_wr_addr,A_wr_data,clk);
  memref_rd#(.WIDTH(32),.SIZE(1024)) memref_rd_B(B_mem,B_rd_en, B_rd_addr,/*valid*/ ,B_rd_data,clk);
  memref_wr#(.WIDTH(32),.SIZE(1024)) memref_wr_B(B_mem,B_wr_en, B_wr_addr,B_wr_data,clk);

jacobi_2d_hls_0 hls_inst (
  .A_ce0(A_rd_en),            // output wire A_ce0
  .A_address0(A_rd_addr),  // output wire [9 : 0] A_address0
  .A_q0(A_rd_data),              // input wire [31 : 0] A_q0
  .A_ce1(),            // output wire A_ce1
  .A_we1(A_wr_en),            // output wire A_we1
  .A_address1(A_wr_addr),  // output wire [9 : 0] A_address1
  .A_d1(A_wr_data),              // output wire [31 : 0] A_d1
  .B_ce0(B_rd_en),            // output wire B_ce0
  .B_address0(B_rd_addr),  // output wire [9 : 0] B_address0
  .B_q0(B_rd_data),              // input wire [31 : 0] B_q0
  .B_ce1(),            // output wire B_ce1
  .B_we1(B_wr_en),            // output wire B_we1
  .B_address1(B_wr_addr),  // output wire [9 : 0] B_address1
  .B_d1(B_wr_data),              // output wire [31 : 0] B_d1
  .ap_clk(clk),          // input wire ap_clk
  .ap_rst(rst),          // input wire ap_rst
  .ap_start(tstart),      // input wire ap_start
  .ap_done(),        // output wire ap_done
  .ap_idle(),        // output wire ap_idle
  .ap_ready()      // output wire ap_ready
);
endmodule

