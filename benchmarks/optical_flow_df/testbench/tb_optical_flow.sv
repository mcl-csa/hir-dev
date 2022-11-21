`default_nettype none
`define Alpha 1
`define Beta 1
module tb_optical_flow();
 tb_optical_flow_hir  optical_flow_hir_inst();
 tb_optical_flow_hls optical_flow_hls_inst();
endmodule

module tb_optical_flow_hir();

  wire tstart;
  wire clk;
  wire rst;


  reg[31:0] img_mem[1023:0];
  wire [9:0] img_rd_addr;
  wire       img_rd_en;
  wire[31:0] img_rd_data;

  reg[31:0] prev_mem[1023:0];
  wire [9:0] prev_rd_addr;
  wire       prev_rd_en;
  wire[31:0] prev_rd_data;

  reg[31:0] optical_flow_mem[2047:0];
  wire [10:0] optical_flow_wr_addr;
  wire       optical_flow_wr_en;
  wire[31:0] optical_flow_wr_data;

  initial begin
      $readmemb("img.mem",img_mem);
      $readmemb("prev.mem",prev_mem);
  end
  
  clk_generator gen_clk_inst(clk,rst,tstart);

  memref_rd#(.WIDTH(32),.SIZE(1024)) memref_rd_img(img_mem, img_rd_en, img_rd_addr, /*valid*/ , img_rd_data, clk);
  memref_rd#(.WIDTH(32),.SIZE(1024)) memref_rd_prev(prev_mem, prev_rd_en, prev_rd_addr, /*valid*/ , prev_rd_data, clk);
  memref_wr#(.WIDTH(32),.SIZE(2048)) memref_wr_optical_flow(optical_flow_mem,optical_flow_wr_en, optical_flow_wr_addr,optical_flow_wr_data,clk);

  optical_flow_hir hir_inst(
    .img_p0_addr_data ( img_rd_addr       ) ,
    .img_p0_addr_en   ( /*unconnected*/ ) ,
    .img_p0_rd_data   ( img_rd_data       ) ,
    .img_p0_rd_en     ( img_rd_en         ) ,

    .prev_p0_addr_data ( prev_rd_addr       ) ,
    .prev_p0_addr_en   ( /*unconnected*/ ) ,
    .prev_p0_rd_data   ( prev_rd_data       ) ,
    .prev_p0_rd_en     ( prev_rd_en         ) ,

    .flow_p0_addr_data ( optical_flow_wr_addr       ) ,
    .flow_p0_addr_en   ( /*unconnected*/ ) ,
    .flow_p0_wr_data   ( optical_flow_wr_data       ) ,
    .flow_p0_wr_en     ( optical_flow_wr_en         ) ,

    .t              ( tstart          ) ,
    .clk            ( clk             ) ,
    .rst            ( rst             )
  );

endmodule

module tb_optical_flow_hls();

  wire tstart;
  wire clk;
  wire rst;


  reg[31:0] img_mem[1023:0];
  wire [9:0] img_rd_addr;
  wire       img_rd_en;
  wire[31:0] img_rd_data;

  reg[31:0] prev_mem[1023:0];
  wire [9:0] prev_rd_addr;
  wire       prev_rd_en;
  wire[31:0] prev_rd_data;

  reg[31:0] optical_flow_mem[2047:0];
  wire [10:0] optical_flow_wr_addr;
  wire       optical_flow_wr_en;
  wire[31:0] optical_flow_wr_data;

  initial begin
      $readmemb("img.mem",img_mem);
      $readmemb("prev.mem",prev_mem);
  end
  
  clk_generator gen_clk_inst(clk,rst,/*unconnected*/);

  memref_rd#(.WIDTH(32),.SIZE(1024)) memref_rd_img(img_mem, img_rd_en, img_rd_addr, /*valid*/ , img_rd_data, clk);
  memref_rd#(.WIDTH(32),.SIZE(1024)) memref_rd_prev(prev_mem, prev_rd_en, prev_rd_addr, /*valid*/ , prev_rd_data, clk);
  memref_wr#(.WIDTH(32),.SIZE(2048)) memref_wr_optical_flow(optical_flow_mem,optical_flow_wr_en, optical_flow_wr_addr,optical_flow_wr_data,clk);

optical_flow_hls_0 hls_inst (
  .flow_ce0(/*unconnected*/),            // output wire optical_flow_ce0
  .flow_we0(optical_flow_wr_en),            // output wire optical_flow_we0
  .img_ce0(img_rd_en),                  // output wire img_ce0
  .ap_clk(clk),                    // input wire ap_clk
  .ap_rst(rst),                    // input wire ap_rst
  .ap_start(1'b1),                // input wire ap_start
  .ap_done(),                  // output wire ap_done
  .ap_idle(),                  // output wire ap_idle
  .ap_ready(),                // output wire ap_ready
  .flow_address0(optical_flow_wr_addr),  // output wire [7 : 0] optical_flow_address0
  .flow_d0(optical_flow_wr_data),              // output wire [31 : 0] optical_flow_d0
  .img_address0(img_rd_addr),        // output wire [7 : 0] img_address0
  .img_q0(img_rd_data),                    // input wire [31 : 0] img_q0
  .prev_ce0(prev_rd_en),                  // output wire img_ce0
  .prev_address0(prev_rd_addr),        // output wire [7 : 0] img_address0
  .prev_q0(prev_rd_data)                    // input wire [31 : 0] img_q0
);
endmodule

