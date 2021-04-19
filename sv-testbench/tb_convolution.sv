`include "tb_helpers.sv"
`default_nettype none
module tb_convolution_mlir();

  reg[31:0] img_mem[63:0];
  wire[7:0] img_addr     ;
  wire img_rd_en         ;
  reg[31:0] img_rd_data  ;

  reg[31:0] kernel_mem[3:0];
  wire[7:0] kernel_addr     ;
  wire kernel_rd_en         ;
  wire[31:0] kernel_rd_data ;

  reg[31:0] output_mem[3:0];
  wire[7:0] output_addr     ;
  wire output_wr_en         ;
  wire[32:0] output_wr_data ;

  wire tstart;
  wire clk;

  initial begin
    for (int i = 0; i < 64; i = i + 1) begin
      img_mem[i] = i+1;
    end
    for (int i = 0; i < 4; i = i + 1) begin
      kernel_mem[i] = 1;
    end
  end 

  generate_clk gen_clk_inst(clk);
  generate_tstart gen_tstart_inst(tstart);

  memref_rd#(.WIDTH(32),.SIZE(64)) 
  port_img_rd(img_mem,img_rd_en, img_addr,/*valid*/ ,img_rd_data,clk);

  memref_rd#(.WIDTH(32),.SIZE(4)) 
  port_kernel_rd(kernel_mem,kernel_rd_en, kernel_addr,/*valid*/ ,kernel_rd_data
    ,clk);

  memref_wr#(.WIDTH(32),.SIZE(64)) 
  port_output_wr(output_mem,output_wr_en, output_addr,output_wr_data,clk);

  convolution conv_mlir(
    .v0_addr   (img_addr   ) ,
    .v0_rd_en  (img_rd_en  ) ,
    .v0_rd_data(img_rd_data) ,
    .v1_addr   (kernel_addr   ) ,
    .v1_rd_en  (kernel_rd_en  ) ,
    .v1_rd_data(kernel_rd_data) ,
    .v2_addr   (output_addr   ) ,
    .v2_wr_en  (output_wr_en  ) ,
    .v2_wr_data(output_wr_data) ,
    .tstart    (tstart    ) ,
    .clk       (clk       ) 
  );

endmodule
