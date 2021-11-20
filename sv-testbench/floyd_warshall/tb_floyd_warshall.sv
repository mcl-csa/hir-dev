`default_nettype none
`define Alpha 1
`define Beta 1

module tb_floyd_warshall();
 tb_floyd_warshall_mlir  inst1();
 tb_floyd_warshall_hls inst2();
endmodule

module tb_floyd_warshall_mlir();

  wire tstart;
  wire clk;
  wire rst;

  wire[31:0] alpha;
  wire[31:0] beta;

  reg[31:0]  path_mem[63:0];
  wire [5:0] path_wr_addr;
  wire       path_wr_en;
  wire[31:0] path_wr_data;

  wire [5:0] path_rd_addr;
  wire       path_rd_en;
  wire[31:0] path_rd_data;

  initial begin
    for (int i = 0; i < 64; i = i + 1) begin
      path_mem[i] = i+1;
    end
    path_mem[32] = 0;
  end 


  clk_generator gen_clk_inst(clk,rst,tstart);

  memref_wr#(.WIDTH(32),.SIZE(64)) memref_wr_path(path_mem,path_wr_en, path_wr_addr,path_wr_data,clk);
  memref_rd#(.WIDTH(32),.SIZE(64)) memref_rd_path(path_mem,path_rd_en, path_rd_addr,/*valid*/ ,path_rd_data,clk);

floyd_warshall mlir_inst(
  .n(0),
  .path_r_p0_addr_data(path_rd_addr),
  .path_r_p0_addr_en(),
  .path_r_p0_rd_en(path_rd_en),
  .path_r_p0_rd_data(path_rd_data),
  .path_w_p0_addr_data(path_wr_addr),
  .path_w_p0_addr_en(),
  .path_w_p0_wr_en(path_wr_en),
  .path_w_p0_wr_data(path_wr_data),
  .t(tstart),
  .clk(clk),
  .rst(rst)
);

endmodule

module tb_floyd_warshall_hls();

  wire tstart;
  wire clk;
  wire rst;

  wire[31:0] alpha;
  wire[31:0] beta;

  reg[31:0]  path_mem[63:0];
  wire [5:0] path_addr1;
  wire       path_wr_en;
  wire[31:0] path_wr_data;

  wire [5:0] path_rd_addr;
  wire       path_rd_en;
  wire[31:0] path_rd_data;

  wire       path_rd_en1;
  wire[31:0] path_rd_data1;
  initial begin
    for (int i = 0; i < 64; i = i + 1) begin
      path_mem[i] = i+1;
    end
    path_mem[32] = 0;
  end 

  clk_generator gen_clk_inst(clk,rst,tstart);

  memref_rd#(.WIDTH(32),.SIZE(64)) memref_rd_path(path_mem,path_rd_en, path_rd_addr,/*valid*/ ,path_rd_data,clk);
  memref_wr#(.WIDTH(32),.SIZE(64)) memref_wr_path1(path_mem,path_wr_en, path_addr1,path_wr_data,clk);
  memref_rd#(.WIDTH(32),.SIZE(64)) memref_rd_path1(path_mem,path_rd_en1, path_addr1,/*valid*/ ,path_rd_data1,clk);

  kernel_floyd_warshall_0 your_instance_name (
  .ap_clk(clk),                // input wire ap_clk
  .ap_rst(tstart),                // input wire ap_rst
  .n(0),                          // input wire [31 : 0] n
  .path_ce0(path_rd_en),            // output wire path_ce0
  .path_address0(path_rd_addr),  // output wire [5 : 0] path_address0
  .path_q0(path_rd_data),              // input wire [31 : 0] path_q0
  .path_ce1(path_rd_en1),            // output wire path_ce1
  .path_we1(path_wr_en),            // output wire path_we1
  .path_address1(path_addr1),  // output wire [5 : 0] path_address1
  .path_d1(path_wr_data),              // output wire [31 : 0] path_d1
  .path_q1(path_rd_data1)              // input wire [31 : 0] path_q1
);
endmodule
