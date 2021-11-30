`default_nettype none
`define Alpha 1
`define Beta 1

module tb_floyd_warshall();
 tb_floyd_warshall_hir  floyd_warshall_hir_inst();
 tb_floyd_warshall_hls floyd_warshall_hls_inst();
endmodule

module tb_floyd_warshall_hir();

  wire tstart;
  wire clk;
  wire rst;

  reg[31:0]  path_mem[63:0];

  wire [5:0] path_addr1;
  wire       path_wr_en1;
  wire[31:0] path_wr_data1;
  wire       path_rd_en1;
  wire[31:0] path_rd_data1;

  wire [5:0] path_addr0;
  wire       path_rd_en0;
  wire[31:0] path_rd_data0;

  initial begin
    for (int i = 0; i < 64; i = i + 1) begin
      path_mem[i] = i+1;
    end
    path_mem[32] = 1;
  end 


  clk_generator gen_clk_inst(clk,rst,tstart);

  memref_rd#(.WIDTH(32),.SIZE(64)) memref_rd_path0(path_mem,path_rd_en0, path_addr0,/*valid*/ ,path_rd_data0,clk);
  memref_rd#(.WIDTH(32),.SIZE(64)) memref_rd_path1(path_mem,path_rd_en1, path_addr1,/*valid*/ ,path_rd_data1,clk);
  memref_wr#(.WIDTH(32),.SIZE(64)) memref_wr_path1(path_mem,path_wr_en1, path_addr1,path_wr_data1,clk);

floyd_warshall_hir hir_inst(
  .n(0),
  .path_p0_addr_data(path_addr0),
  .path_p0_addr_en(),
  .path_p0_rd_en(path_rd_en0),
  .path_p0_rd_data(path_rd_data0),
  .path_p1_addr_data(path_addr1),
  .path_p1_addr_en(),
  .path_p1_wr_en(path_wr_en1),
  .path_p1_wr_data(path_wr_data1),
  .path_p1_rd_en(path_rd_en1),
  .path_p1_rd_data(path_rd_data1),
  .t(tstart),
  .clk(clk),
  .rst(rst)
);

endmodule

module tb_floyd_warshall_hls();

  wire tstart;
  wire clk;
  wire rst;

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
      path_mem[i] = i;
    end
    path_mem[32] = 0;
  end 

  clk_generator gen_clk_inst(clk,rst,tstart);

  memref_rd#(.WIDTH(32),.SIZE(64)) memref_rd_path(path_mem,path_rd_en, path_rd_addr,/*valid*/ ,path_rd_data,clk);
  memref_wr#(.WIDTH(32),.SIZE(64)) memref_wr_path1(path_mem,path_wr_en, path_addr1,path_wr_data,clk);
  memref_rd#(.WIDTH(32),.SIZE(64)) memref_rd_path1(path_mem,path_rd_en1, path_addr1,/*valid*/ ,path_rd_data1,clk);

  floyd_warshall_hls_0 hls_inst (
  .ap_clk(clk),                
  .ap_rst(rst),             
  .ap_start(tstart),             
  .n(0),                       
  .path_ce1(path_rd_en),       
  .path_address1(path_rd_addr),
  .path_q1(path_rd_data),      
  .path_ce0(path_rd_en1),      
  .path_we0(path_wr_en),       
  .path_address0(path_addr1),  
  .path_d0(path_wr_data),      
  .path_q0(path_rd_data1)      
);
endmodule
