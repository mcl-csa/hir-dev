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

    .harris_p1_addr_data ( harris_wr_addr       ) ,
    .harris_p1_addr_en   ( /*unconnected*/ ) ,
    .harris_p1_wr_data   ( harris_wr_data       ) ,
    .harris_p1_wr_en     ( harris_wr_en         ) ,

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

endmodule

