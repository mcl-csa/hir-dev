`default_nettype none
`define Alpha 1
`define Beta 1
module tb_dus();
 tb_dus_hir  dus_hir_inst();
 tb_dus_hls dus_hls_inst();
endmodule

module tb_dus_hir();

  wire tstart;
  wire clk;
  wire rst;


  reg[31:0] img_mem[1023:0];
  wire [9:0] img_rd_addr;
  wire       img_rd_en;
  wire[31:0] img_rd_data;

  reg[31:0] dus_mem[1023:0];
  wire [9:0] dus_wr_addr;
  wire       dus_wr_en;
  wire[31:0] dus_wr_data;

  initial begin
      $readmemb("img.mem",img_mem);
  end
  
  clk_generator gen_clk_inst(clk,rst,tstart);

  memref_rd#(.WIDTH(32),.SIZE(1024)) memref_rd_img(img_mem, img_rd_en, img_rd_addr, /*valid*/ , img_rd_data, clk);
  memref_wr#(.WIDTH(32),.SIZE(1024)) memref_wr_dus(dus_mem,dus_wr_en, dus_wr_addr,dus_wr_data,clk);

  dus_hir hir_inst(
    .img_p0_addr_data ( img_rd_addr       ) ,
    .img_p0_addr_en   ( /*unconnected*/ ) ,
    .img_p0_rd_data   ( img_rd_data       ) ,
    .img_p0_rd_en     ( img_rd_en         ) ,

    .dus_p0_addr_data ( dus_wr_addr       ) ,
    .dus_p0_addr_en   ( /*unconnected*/ ) ,
    .dus_p0_wr_data   ( dus_wr_data       ) ,
    .dus_p0_wr_en     ( dus_wr_en         ) ,

    .t              ( tstart          ) ,
    .clk            ( clk             ) ,
    .rst            ( rst             )
  );

endmodule

module tb_dus_hls();

  wire tstart;
  wire clk;
  wire rst;


  reg[31:0] img_mem[1023:0];
  wire [9:0] img_rd_addr;
  wire       img_rd_en;
  wire[31:0] img_rd_data;

  reg[31:0] dus_mem[1023:0];
  wire [9:0] dus_wr_addr;
  wire       dus_wr_en;
  wire[31:0] dus_wr_data;

  initial begin
      $readmemb("img.mem",img_mem);
  end
  
  clk_generator gen_clk_inst(clk,rst,/*unconnected*/);

  memref_rd#(.WIDTH(32),.SIZE(1024)) memref_rd_img(img_mem, img_rd_en, img_rd_addr, /*valid*/ , img_rd_data, clk);
  memref_wr#(.WIDTH(32),.SIZE(1024)) memref_wr_dus(dus_mem,dus_wr_en, dus_wr_addr,dus_wr_data,clk);

dus_hls_0 hls_inst (
  .dus_ce0(/*unconnected*/),            // output wire dus_ce0
  .dus_we0(dus_wr_en),            // output wire dus_we0
  .img_ce0(img_rd_en),                  // output wire img_ce0
  .ap_clk(clk),                    // input wire ap_clk
  .ap_rst(rst),                    // input wire ap_rst
  .ap_start(1'b1),                // input wire ap_start
  .ap_done(),                  // output wire ap_done
  .ap_idle(),                  // output wire ap_idle
  .ap_ready(),                // output wire ap_ready
  .dus_address0(dus_wr_addr),  // output wire [7 : 0] dus_address0
  .dus_d0(dus_wr_data),              // output wire [31 : 0] dus_d0
  .img_address0(img_rd_addr),        // output wire [7 : 0] img_address0
  .img_q0(img_rd_data)                    // input wire [31 : 0] img_q0
);
endmodule

