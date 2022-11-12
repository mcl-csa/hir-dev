`default_nettype none
module tb_2mm();
 tb_2mm_hir  hir_inst();
 tb_2mm_hls hls_inst();
endmodule

module tb_2mm_hir();

  wire tstart;
  wire clk;
  wire rst;

  reg[31:0]  T_mem[1023:0];
  wire [9:0] T_addr0;
  wire       T_rd_en0;
  wire[31:0] T_rd_data0;
  wire       T_wr_en0;
  wire[31:0] T_wr_data0;

  wire [9:0] T_addr1;
  wire       T_rd_en1;
  wire[31:0] T_rd_data1;
  wire       T_wr_en1;
  wire[31:0] T_wr_data1;

  reg[31:0] A_mem[1023:0];
  wire [9:0] A_rd_addr;
  wire       A_rd_en;
  wire[31:0] A_rd_data;

  reg[31:0] B_mem[1023:0];
  wire [9:0] B_rd_addr;
  wire       B_rd_en;
  wire[31:0] B_rd_data;

  reg[31:0]  C_mem[1023:0];
  wire [9:0] C_rd_addr;
  wire       C_rd_en;
  wire[31:0] C_rd_data;

  reg[31:0]  D_mem[1023:0];
  wire [9:0] D_rd_addr;
  wire       D_rd_en;
  wire[31:0] D_rd_data;
  wire[9:0]  D_wr_addr;
  wire       D_wr_en;
  wire[31:0] D_wr_data;

  wire[31:0] alpha= 32'b00111111100000000000000000000000;
  wire[31:0] beta= 32'b01000000000000000000000000000000;
  //wire[31:0] alpha=beta;
  initial begin
      $readmemb("T.mem",T_mem);
      $readmemb("A.mem",A_mem);
      $readmemb("B.mem",B_mem);
      $readmemb("C.mem",C_mem);
      $readmemb("D.mem",D_mem);
  end
  
  clk_generator gen_clk_inst(clk,rst,tstart);

  memref_rd#(.WIDTH(32),.SIZE(1024)) memref_rd_T0(T_mem,T_rd_en0, T_addr0,/*valid*/ ,T_rd_data0,clk);
  //memref_wr#(.WIDTH(32),.SIZE(1024)) memref_wr_T0(T_mem,T_wr_en0, T_addr0,T_wr_data0,clk);
  //memref_rd#(.WIDTH(32),.SIZE(1024)) memref_rd_T1(T_mem,T_rd_en1, T_addr1,/*valid*/ ,T_rd_data1,clk);
  memref_wr#(.WIDTH(32),.SIZE(1024)) memref_wr_T1(T_mem,T_wr_en1, T_addr1,T_wr_data1,clk);

  memref_rd#(.WIDTH(32),.SIZE(1024)) memref_rd_A(A_mem, A_rd_en, A_rd_addr, /*valid*/ , A_rd_data, clk);
  memref_rd#(.WIDTH(32),.SIZE(1024)) memref_rd_B(B_mem,B_rd_en, B_rd_addr,/*valid*/ ,B_rd_data,clk);
  memref_rd#(.WIDTH(32),.SIZE(1024)) memref_rd_C(C_mem,C_rd_en, C_rd_addr,/*valid*/ ,C_rd_data,clk);
  memref_rd#(.WIDTH(32),.SIZE(1024)) memref_rd_D(D_mem,D_rd_en, D_rd_addr,/*valid*/ ,D_rd_data,clk);
  memref_wr#(.WIDTH(32),.SIZE(1024)) memref_wr_D(D_mem,D_wr_en, D_wr_addr,D_wr_data,clk);

  kernel_2mm_hir hir_inst(
    .alpha(alpha),
    .beta(beta),

    .tmp_p0_addr_data ( T_addr0       ) ,
    .tmp_p0_addr_en   ( /*unconnected*/ ) ,
    .tmp_p0_rd_data   ( T_rd_data0       ) ,
    .tmp_p0_rd_en     ( T_rd_en0         ) ,
    //.tmp_p0_wr_data   ( T_wr_data0       ) ,
    //.tmp_p0_wr_en     ( T_wr_en0         ) ,

    .tmp_p1_addr_data ( T_addr1       ) ,
    .tmp_p1_addr_en   ( /*unconnected*/ ) ,
    //.tmp_p1_rd_data   ( T_rd_data1       ) ,
    //.tmp_p1_rd_en     ( T_rd_en1         ) ,
    .tmp_p1_wr_data   ( T_wr_data1       ) ,
    .tmp_p1_wr_en     ( T_wr_en1         ) ,

    .A_p0_addr_data ( A_rd_addr       ) ,
    .A_p0_addr_en   ( /*unconnected*/ ) ,
    .A_p0_rd_data   ( A_rd_data       ) ,
    .A_p0_rd_en     ( A_rd_en         ) ,

    .B_p0_addr_data ( B_rd_addr       ) ,
    .B_p0_addr_en   ( /*unconnected*/ ) ,
    .B_p0_rd_data   ( B_rd_data       ) ,
    .B_p0_rd_en     ( B_rd_en         ) ,

    .C_p0_addr_data ( C_rd_addr       ) ,
    .C_p0_addr_en   ( /*unconnected*/ ) ,
    .C_p0_rd_data   ( C_rd_data       ) ,
    .C_p0_rd_en     ( C_rd_en         ) ,

    .D_p0_addr_data ( D_rd_addr       ) ,
    .D_p0_addr_en   ( /*unconnected*/ ) ,
    .D_p0_rd_data   ( D_rd_data       ) ,
    .D_p0_rd_en     ( D_rd_en         ) ,

    .D_p1_addr_data ( D_wr_addr       ) ,
    .D_p1_addr_en   ( /*unconnected*/ ) ,
    .D_p1_wr_data   ( D_wr_data       ) ,
    .D_p1_wr_en     ( D_wr_en         ) ,

    .t              ( tstart          ) ,
    .clk            ( clk             ) ,
    .rst            ( rst             )
  );

endmodule

module tb_2mm_hls();

  wire tstart;
  wire clk;
  wire rst;

  reg[31:0]  T_mem[1023:0];
  wire [9:0] T_addr0;
  wire       T_rd_en0;
  wire[31:0] T_rd_data0;
  wire       T_wr_en0;
  wire[31:0] T_wr_data0;

  wire [9:0] T_addr1;
  wire       T_rd_en1;
  wire[31:0] T_rd_data1;
  wire       T_wr_en1;
  wire[31:0] T_wr_data1;


  reg[31:0] A_mem[1023:0];
  wire [9:0] A_rd_addr;
  wire       A_rd_en;
  wire[31:0] A_rd_data;

  reg[31:0]  B_mem[1023:0];
  wire [9:0] B_rd_addr0;
  wire       B_rd_en0;
  wire[31:0] B_rd_data0;

  wire [9:0] B_rd_addr1;
  wire       B_rd_en1;
  wire[31:0] B_rd_data1;

  reg[31:0]  C_mem[1023:0];
  wire [9:0] C_rd_addr0;
  wire       C_rd_en0;
  wire[31:0] C_rd_data0;

  wire [9:0] C_rd_addr1;
  wire       C_rd_en1;
  wire[31:0] C_rd_data1;

  reg[31:0]  D_mem[1023:0];
  wire [9:0] D_addr0;
  wire       D_rd_en0;
  wire[31:0] D_rd_data0;
  wire       D_wr_en0;
  wire[31:0] D_wr_data0;

  wire [9:0] D_addr1;
  wire       D_rd_en1;
  wire[31:0] D_rd_data1;
  wire       D_wr_en1;
  wire[31:0] D_wr_data1;

  wire[31:0] alpha= 32'b00111111100000000000000000000000;
  wire[31:0] beta= 32'b01000000000000000000000000000000;

  initial begin
      $readmemb("T.mem",T_mem);
      $readmemb("A.mem",A_mem);
      $readmemb("B.mem",B_mem);
      $readmemb("C.mem",C_mem);
      $readmemb("D.mem",D_mem);
  end
  
  clk_generator gen_clk_inst(clk,rst,tstart);

  memref_rd#(.WIDTH(32),.SIZE(1024)) memref_rd_T0(T_mem,T_rd_en0, T_addr0,/*valid*/ ,T_rd_data0,clk);
  //memref_wr#(.WIDTH(32),.SIZE(1024)) memref_wr_T0(T_mem,T_wr_en0, T_addr0,T_wr_data0,clk);
  //memref_rd#(.WIDTH(32),.SIZE(1024)) memref_rd_T1(T_mem,T_rd_en1, T_addr1,/*valid*/ ,T_rd_data1,clk);
  memref_wr#(.WIDTH(32),.SIZE(1024)) memref_wr_T1(T_mem,T_wr_en1, T_addr1,T_wr_data1,clk);

  memref_rd#(.WIDTH(32),.SIZE(1024)) memref_rd_A(A_mem, A_rd_en, A_rd_addr, /*valid*/ , A_rd_data, clk);

  memref_rd#(.WIDTH(32),.SIZE(1024)) memref_rd_B0(B_mem,B_rd_en0, B_rd_addr0,/*valid*/ ,B_rd_data0,clk);
  memref_rd#(.WIDTH(32),.SIZE(1024)) memref_rd_B1(B_mem,B_rd_en1, B_rd_addr1,/*valid*/ ,B_rd_data1,clk);

  memref_rd#(.WIDTH(32),.SIZE(1024)) memref_rd_C0(C_mem,C_rd_en0, C_rd_addr0,/*valid*/ ,C_rd_data0,clk);
  memref_rd#(.WIDTH(32),.SIZE(1024)) memref_rd_C1(C_mem,C_rd_en1, C_rd_addr1,/*valid*/ ,C_rd_data1,clk);

  memref_rd#(.WIDTH(32),.SIZE(1024)) memref_rd_D0(D_mem,D_rd_en0, D_addr0,/*valid*/ ,D_rd_data0,clk);
  //memref_wr#(.WIDTH(32),.SIZE(1024)) memref_wr_D0(D_mem,D_wr_en0, D_addr0,D_wr_data0,clk);
  //memref_rd#(.WIDTH(32),.SIZE(1024)) memref_rd_D1(D_mem,D_rd_en1, D_addr1,/*valid*/ ,D_rd_data1,clk);
  memref_wr#(.WIDTH(32),.SIZE(1024)) memref_wr_D1(D_mem,D_wr_en1, D_addr1,D_wr_data1,clk);

kernel_2mm_hls_0 hls_inst (
  .alpha(alpha),                // input wire [31 : 0] alpha
  .beta(beta),                  // input wire [31 : 0] beta
  .tmp_ce0(T_rd_en0),            // output wire tmp_ce0
  .tmp_address0(T_addr0),  // output wire [9 : 0] tmp_address0
  .tmp_q0(T_rd_data0),              // input wire [31 : 0] tmp_q0
  .tmp_we1(T_wr_en1),            // output wire tmp_we0
  .tmp_ce1(),            // output wire tmp_ce1
  .tmp_address1(T_addr1),  // output wire [9 : 0] tmp_address1
  .tmp_d1(T_wr_data1),              // input wire [31 : 0] tmp_q0
  .A_ce0(A_rd_en),                // output wire A_ce0
  .A_address0(A_rd_addr),      // output wire [9 : 0] A_address0
  .A_q0(A_rd_data),                  // input wire [31 : 0] A_q0
  .B_ce0(B_rd_en0),                // output wire B_ce0
  .B_address0(B_rd_addr0),      // output wire [9 : 0] B_address0
  .B_q0(B_rd_data0),                  // input wire [31 : 0] B_q0
  .B_ce1(B_rd_en1),                // output wire B_ce1
  .B_address1(B_rd_addr1),      // output wire [9 : 0] B_address1
  .B_q1(B_rd_data1),                  // input wire [31 : 0] B_q1
  .C_ce0(C_rd_en0),                // output wire C_ce0
  .C_address0(C_rd_addr0),      // output wire [9 : 0] C_address0
  .C_q0(C_rd_data0),                  // input wire [31 : 0] C_q0
  .C_ce1(C_rd_en1),                // output wire C_ce1
  .C_address1(C_rd_addr1),      // output wire [9 : 0] C_address1
  .C_q1(C_rd_data1),                  // input wire [31 : 0] C_q1
  .D_ce0(D_rd_en0),                // output wire D_ce0
  .D_address0(D_addr0),      // output wire [9 : 0] D_address0
  .D_q0(D_rd_data0),                  // input wire [31 : 0] D_q0
  .D_ce1(),                // output wire D_ce0
  .D_address1(D_addr1),      // output wire [9 : 0] D_address0
  .D_we1(D_wr_en1),                // output wire D_we0
  .D_d1(D_wr_data1),                  // input wire [31 : 0] D_q0
  .ap_clk(clk),              // input wire ap_clk
  .ap_rst(rst),              // input wire ap_rst
  .ap_start(tstart),          // input wire ap_start
  .ap_done(),            // output wire ap_done
  .ap_idle(),            // output wire ap_idle
  .ap_ready()          // output wire ap_ready
);

endmodule

