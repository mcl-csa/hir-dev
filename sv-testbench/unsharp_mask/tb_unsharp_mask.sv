`default_nettype none
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

  reg[31:0]  maskImg_mem[1023:0];
  wire [9:0] maskImg_p0_addr_data;
  wire       maskImg_p0_wr_en;
  wire[31:0] maskImg_p0_wr_data;

  initial begin
      $readmemb("lenna.mem",img_mem);
      $readmemb("kernel.mem",kernelX_mem);
      $readmemb("kernel.mem",kernelY_mem);
  end

  
  clk_generator gen_clk_inst(clk,rst,tstart);

  memref_rd#(.WIDTH(32),.SIZE(1024)) memref_rd_img(img_mem,img_p0_rd_en, img_p0_addr_data,/*valid*/ ,img_p0_rd_data,clk);
  memref_rd#(.WIDTH(32),.SIZE(8)) memref_rd_kernelX(kernelX_mem,kernelX_p0_rd_en, kernelX_p0_addr_data,/*valid*/ ,kernelX_p0_rd_data,clk);
  memref_rd#(.WIDTH(32),.SIZE(8)) memref_rd_kernelY(kernelY_mem,kernelY_p0_rd_en, kernelY_p0_addr_data,/*valid*/ ,kernelY_p0_rd_data,clk);
  memref_wr#(.WIDTH(32),.SIZE(1024)) memref_wr_maskImg(maskImg_mem,maskImg_p0_wr_en, maskImg_p0_addr_data,maskImg_p0_wr_data,clk);

unsharpMask_hir(	
  .img_p0_rd_data         (img_p0_rd_data       ),
  .img_p0_addr_en         (img_p0_addr_en       ),
  .img_p0_addr_data       (img_p0_addr_data     ),
  .img_p0_rd_en           (img_p0_rd_en         ),
  .maskImg_p0_wr_data     (maskImg_p0_wr_data   ),
  .maskImg_p0_addr_en     (                     ),
  .maskImg_p0_addr_data   (maskImg_p0_addr_data ),
  .maskImg_p0_wr_en       (maskImg_p0_wr_en     ),
  .kernelX_p0_rd_data     (kernelX_p0_rd_data   ),
   kernelX_p0_addr_en     (                     ),
  .kernelX_p0_addr_data   (kernelX_p0_addr_data ),
  .kernelX_p0_rd_en       (kernelX_p0_rd_en     ),
  .kernelY_p0_rd_data     (kernelX_p0_rd_data   ),
   kernelY_p0_addr_en     (                     ),
  .kernelY_p0_addr_data   (kernelX_p0_addr_data ),
  .kernelY_p0_rd_en       (kernelX_p0_rd_en     ),
  .t                      (tstart               ),
  .clk                    (clk                  ),
  .rst                    (rst                  )
);

endmodule


