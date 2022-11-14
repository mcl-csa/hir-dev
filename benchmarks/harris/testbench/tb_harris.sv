`default_nettype none
`define Alpha 1
`define Beta 1
module tb_harris();
 tb_harris_hir  harris_hir_inst();
 tb_harris_hls harris_hls_inst();
endmodule

module tb_harris_hir();

  wire tstart;
  wire clk;
  wire rst;


  reg[31:0] img_mem[1023:0];
  wire [9:0] img_rd_addr;
  wire       img_rd_en;
  wire[31:0] img_rd_data;

  reg[31:0] harris_mem[1023:0];
  wire [9:0] harris_wr_addr;
  wire       harris_wr_en;
  wire[31:0] harris_wr_data;

  initial begin
      $readmemb("img.mem",img_mem);
  end
  
  clk_generator gen_clk_inst(clk,rst,tstart);

  memref_rd#(.WIDTH(32),.SIZE(1024)) memref_rd_img(img_mem, img_rd_en, img_rd_addr, /*valid*/ , img_rd_data, clk);
  memref_wr#(.WIDTH(32),.SIZE(1024)) memref_wr_harris(harris_mem,harris_wr_en, harris_wr_addr,harris_wr_data,clk);

  harris_hir hir_inst(
    .img_p0_addr_data ( img_rd_addr       ) ,
    .img_p0_addr_en   ( /*unconnected*/ ) ,
    .img_p0_rd_data   ( img_rd_data       ) ,
    .img_p0_rd_en     ( img_rd_en         ) ,

    .harris_p0_addr_data ( harris_wr_addr       ) ,
    .harris_p0_addr_en   ( /*unconnected*/ ) ,
    .harris_p0_wr_data   ( harris_wr_data       ) ,
    .harris_p0_wr_en     ( harris_wr_en         ) ,

    .t              ( tstart          ) ,
    .clk            ( clk             ) ,
    .rst            ( rst             )
  );

endmodule

module tb_harris_hls();

  wire tstart;
  wire clk;
  wire rst;


  reg[31:0] img_mem[1023:0];
  wire [9:0] img_rd_addr;
  wire       img_rd_en;
  wire[31:0] img_rd_data;

  reg[31:0] harris_mem[1023:0];
  wire [9:0] harris_wr_addr;
  wire       harris_wr_en;
  wire[31:0] harris_wr_data;

  initial begin
      $readmemb("img.mem",img_mem);
  end
  
  clk_generator gen_clk_inst(clk,rst,tstart);

  memref_rd#(.WIDTH(32),.SIZE(1024)) memref_rd_img(img_mem, img_rd_en, img_rd_addr, /*valid*/ , img_rd_data, clk);
  memref_wr#(.WIDTH(32),.SIZE(1024)) memref_wr_harris(harris_mem,harris_wr_en, harris_wr_addr,harris_wr_data,clk);

harris_hls_0 hls_inst (
  .harris_ce0(/*unconnected*/),            // output wire harris_ce0
  .harris_we0(harris_wr_en),            // output wire harris_we0
  .img_ce0(img_rd_en),                  // output wire img_ce0
  .ap_clk(clk),                    // input wire ap_clk
  .ap_rst(rst),                    // input wire ap_rst
  .ap_start(tstart),                // input wire ap_start
  .ap_done(),                  // output wire ap_done
  .ap_idle(),                  // output wire ap_idle
  .ap_ready(),                // output wire ap_ready
  .harris_address0(harris_wr_addr),  // output wire [7 : 0] harris_address0
  .harris_d0(harris_wr_data),              // output wire [31 : 0] harris_d0
  .img_address0(img_rd_addr),        // output wire [7 : 0] img_address0
  .img_q0(img_rd_data)                    // input wire [31 : 0] img_q0
);
endmodule

