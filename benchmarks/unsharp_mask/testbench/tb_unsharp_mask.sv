`default_nettype none
module tb_unsharp_mask();
  tb_unsharp_mask_hir hir_inst();
  tb_unsharp_mask_hls hls_inst();
endmodule

module tb_unsharp_mask_hir();

  wire tstart;
  wire clk;
  wire rst;

  reg[31:0]  img_mem[1023:0];
  wire [9:0] img_p0_addr_data;
  wire       img_p0_rd_en;
  wire[31:0] img_p0_rd_data;

  reg[31:0]  kernelX_mem[7:0];
  wire [2:0] kernelX_p0_addr_data;
  wire       kernelX_p0_rd_en;
  wire[31:0] kernelX_p0_rd_data;

  reg[31:0]  kernelY_mem[7:0];
  wire [2:0] kernelY_p0_addr_data;
  wire       kernelY_p0_rd_en;
  wire[31:0] kernelY_p0_rd_data;

  reg[31:0]  mask_mem[1023:0];
  wire [9:0] mask_p0_addr_data;
  wire       mask_p0_wr_en;
  wire[31:0] mask_p0_wr_data;

  initial begin
      $readmemb("lenna.mem",img_mem);
      $readmemb("kernel.mem",kernelX_mem);
      $readmemb("kernel.mem",kernelY_mem);
  end

  
  clk_generator gen_clk_inst(clk,rst,tstart);

  memref_rd#(.WIDTH(32),.SIZE(1024)) memref_rd_img(img_mem,img_p0_rd_en, img_p0_addr_data,/*valid*/ ,img_p0_rd_data,clk);
  memref_rd#(.WIDTH(32),.SIZE(8)) memref_rd_kernelX(kernelX_mem,kernelX_p0_rd_en, kernelX_p0_addr_data,/*valid*/ ,kernelX_p0_rd_data,clk);
  memref_rd#(.WIDTH(32),.SIZE(8)) memref_rd_kernelY(kernelY_mem,kernelY_p0_rd_en, kernelY_p0_addr_data,/*valid*/ ,kernelY_p0_rd_data,clk);
  memref_wr#(.WIDTH(32),.SIZE(1024)) memref_wr_mask(mask_mem,mask_p0_wr_en, mask_p0_addr_data,mask_p0_wr_data,clk);

unsharp_mask_hir inst(	
  .img_p0_rd_data         (img_p0_rd_data       ),
  .img_p0_addr_en         (                     ),
  .img_p0_addr_data       (img_p0_addr_data     ),
  .img_p0_rd_en           (img_p0_rd_en         ),
  .mask_img_p0_wr_data     (mask_p0_wr_data   ),
  .mask_img_p0_addr_en     (                     ),
  .mask_img_p0_addr_data   (mask_p0_addr_data ),
  .mask_img_p0_wr_en       (mask_p0_wr_en     ),
  .kernelX_p0_rd_data     (kernelX_p0_rd_data   ),
  .kernelX_p0_addr_en     (                     ),
  .kernelX_p0_addr_data   (kernelX_p0_addr_data ),
  .kernelX_p0_rd_en       (kernelX_p0_rd_en     ),
  .kernelY_p0_rd_data     (kernelY_p0_rd_data   ),
  .kernelY_p0_addr_en     (                     ),
  .kernelY_p0_addr_data   (kernelY_p0_addr_data ),
  .kernelY_p0_rd_en       (kernelY_p0_rd_en     ),
  .t                      (tstart               ),
  .clk                    (clk                  ),
  .rst                    (rst                  )
);

endmodule


module tb_unsharp_mask_hls();

  wire tstart;
  wire clk;
  wire rst;

  reg[31:0]  img_mem[1023:0];
  wire [9:0] img_p0_addr_data;
  wire       img_p0_rd_en;
  wire[31:0] img_p0_rd_data;

  reg[31:0]  kernelX_mem[7:0];
  wire [2:0] kernelX_p0_addr_data;
  wire       kernelX_p0_rd_en;
  wire[31:0] kernelX_p0_rd_data;

  reg[31:0]  kernelY_mem[7:0];
  wire [2:0] kernelY_p0_addr_data;
  wire       kernelY_p0_rd_en;
  wire[31:0] kernelY_p0_rd_data;

  reg[31:0]  mask_mem[1023:0];
  wire [9:0] mask_p0_addr_data;
  wire       mask_p0_wr_en;
  wire[31:0] mask_p0_wr_data;

  initial begin
      $readmemb("lenna.mem",img_mem);
      $readmemb("kernel.mem",kernelX_mem);
      $readmemb("kernel.mem",kernelY_mem);
  end

  
  clk_generator gen_clk_inst(clk,rst,tstart);

  memref_rd#(.WIDTH(32),.SIZE(1024)) memref_rd_img(img_mem,img_p0_rd_en, img_p0_addr_data,/*valid*/ ,img_p0_rd_data,clk);
  memref_rd#(.WIDTH(32),.SIZE(8)) memref_rd_kernelX(kernelX_mem,kernelX_p0_rd_en, kernelX_p0_addr_data,/*valid*/ ,kernelX_p0_rd_data,clk);
  memref_rd#(.WIDTH(32),.SIZE(8)) memref_rd_kernelY(kernelY_mem,kernelY_p0_rd_en, kernelY_p0_addr_data,/*valid*/ ,kernelY_p0_rd_data,clk);
  memref_wr#(.WIDTH(32),.SIZE(1024)) memref_wr_mask(mask_mem,mask_p0_wr_en, mask_p0_addr_data,mask_p0_wr_data,clk);

unsharp_mask_hls_0 inst (
  .img_ce0(img_p0_rd_en),                            // output wire img_ce0
  .mask_img_ce0(),                  // output wire mask_img_ce0
  .mask_img_we0(mask_p0_wr_en),                  // output wire mask_img_we0
  .kernelDataX_ce0(kernelX_p0_rd_en),            // output wire kernelDataX_ce0
  .kernelDataY_ce0(kernelY_p0_rd_en),            // output wire kernelDataY_ce0
  .ap_clk(clk),                              // input wire ap_clk
  .ap_rst(rst),                              // input wire ap_rst
  .ap_start(1'b1),                          // input wire ap_start
  .ap_done(),                            // output wire ap_done
  .ap_ready(),                          // output wire ap_ready
  .ap_idle(),                            // output wire ap_idle
  .img_address0(img_p0_addr_data),                  // output wire [9 : 0] img_address0
  .img_q0(img_p0_rd_data),                              // input wire [31 : 0] img_q0
  .mask_img_address0(mask_p0_addr_data),        // output wire [9 : 0] mask_img_address0
  .mask_img_d0(mask_p0_wr_data),                    // output wire [31 : 0] mask_img_d0
  .kernelDataX_address0(kernelX_p0_addr_data),  // output wire [2 : 0] kernelDataX_address0
  .kernelDataX_q0(kernelX_p0_rd_data),              // input wire [31 : 0] kernelDataX_q0
  .kernelDataY_address0(kernelY_p0_addr_data),  // output wire [2 : 0] kernelDataY_address0
  .kernelDataY_q0(kernelY_p0_rd_data)              // input wire [31 : 0] kernelDataY_q0
);
endmodule

/*
module unsharp_mask_hls(
  output wire img_ce0,
  output wire mask_img_ce0,
  output wire mask_img_we0,
  output wire kernelDataX_ce0,
  output wire kernelDataY_ce0,
  input wire ap_clk,
  input wire ap_rst,
  input wire ap_start,
  output wire ap_done,
  output wire ap_idle,
  output wire ap_ready,
  output wire [9 : 0] img_address0,
  input wire [31 : 0] img_q0,
  output wire [9 : 0] mask_img_address0,
  output wire [31 : 0] mask_img_d0,
  output wire [2 : 0] kernelDataX_address0,
  input wire [31 : 0] kernelDataX_q0,
  output wire [2 : 0] kernelDataY_address0,
  input wire [31 : 0] kernelDataY_q0
);

unsharp_mask_hls_0 hls_inst (
  .img_ce0(img_ce0),                            // output wire img_ce0
  .mask_img_ce0(mask_img_ce0),                  // output wire mask_img_ce0
  .mask_img_we0(mask_img_we0),                  // output wire mask_img_we0
  .kernelDataX_ce0(kernelDataX_ce0),            // output wire kernelDataX_ce0
  .kernelDataY_ce0(kernelDataY_ce0),            // output wire kernelDataY_ce0
  .ap_clk(ap_clk),                              // input wire ap_clk
  .ap_rst(ap_rst),                              // input wire ap_rst
  .ap_start(ap_start),                          // input wire ap_start
  .ap_done(ap_done),                            // output wire ap_done
  .ap_idle(ap_idle),                            // output wire ap_idle
  .ap_ready(ap_ready),                          // output wire ap_ready
  .img_address0(img_address0),                  // output wire [9 : 0] img_address0
  .img_q0(img_q0),                              // input wire [31 : 0] img_q0
  .mask_img_address0(mask_img_address0),        // output wire [9 : 0] mask_img_address0
  .mask_img_d0(mask_img_d0),                    // output wire [31 : 0] mask_img_d0
  .kernelDataX_address0(kernelDataX_address0),  // output wire [2 : 0] kernelDataX_address0
  .kernelDataX_q0(kernelDataX_q0),              // input wire [31 : 0] kernelDataX_q0
  .kernelDataY_address0(kernelDataY_address0),  // output wire [2 : 0] kernelDataY_address0
  .kernelDataY_q0(kernelDataY_q0)              // input wire [31 : 0] kernelDataY_q0
);
endmodule
*/