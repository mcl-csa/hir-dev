`include "../tb_helpers.sv"
`default_nettype none
module tb_convolution();
  tb_convolution_mlir tb_mlir();
  tb_convolution_hls tb_hls();
endmodule

module tb_convolution_mlir();
  reg[31:0] img_mem[63:0];
  wire[5:0] img_addr     ;
  wire img_rd_en         ;
  reg[31:0] img_rd_data  ;

  reg[31:0] kernel_mem[3:0];
  wire[1:0] kernel_addr     ;
  wire kernel_rd_en         ;
  wire[31:0] kernel_rd_data ;

  reg[31:0] output_mem[63:0];
  wire[5:0] output_addr     ;
  wire output_wr_en         ;
  wire[31:0] output_wr_data ;

  wire tstart;
  wire clk;
  wire rst;

  initial begin
      $readmemb("img_vector.mem",img_mem);
      $readmemb("kernel_vector.mem",kernel_mem);
  end

  clk_generator gen_clk_inst(clk,rst,tstart);
  
  memref_rd#(.WIDTH(32),.SIZE(64)) 
  port_img_rd(img_mem,img_rd_en, img_addr,/*valid*/ ,img_rd_data,clk);

  memref_rd#(.WIDTH(32),.SIZE(4)) 
  port_kernel_rd(kernel_mem,kernel_rd_en, kernel_addr,/*valid*/ ,kernel_rd_data
    ,clk);

  memref_wr#(.WIDTH(32),.SIZE(64)) 
  port_output_wr(output_mem,output_wr_en, output_addr,output_wr_data,clk);

  hir_convolution conv_mlir(
    .img_p0_addr_data (img_addr) ,
    .img_p0_addr_en (/*unconnected*/) ,
    .img_p0_rd_en (img_rd_en) ,
    .img_p0_rd_data (img_rd_data) ,
    .kernel_p0_addr_en (/*unconnected*/),
    .kernel_p0_addr_data (kernel_addr) ,
    .kernel_p0_rd_en (kernel_rd_en) ,
    .kernel_p0_rd_data (kernel_rd_data) ,
    .output_p0_addr_en (/*unconnected*/),
    .output_p0_addr_data (output_addr) ,
    .output_p0_wr_en (output_wr_en) ,
    .output_p0_wr_data (output_wr_data) ,
    .t (tstart) ,
    .clk (clk) ,
    .rst (rst) 
  );

endmodule

module tb_convolution_hls();
  reg[31:0] img_mem[63:0];
  wire[5:0] img_addr     ;
  wire img_rd_en         ;
  reg[31:0] img_rd_data  ;

  reg[31:0] kernel_mem[3:0];
  wire[1:0] kernel_addr     ;
  wire kernel_rd_en         ;
  wire[31:0] kernel_rd_data ;

  reg[31:0] output_mem[63:0];
  wire[5:0] output_addr     ;
  wire output_wr_en         ;
  wire[31:0] output_wr_data ;

  wire tstart;
  wire clk;

  initial begin
      $readmemb("img_vector.mem",img_mem);
      $readmemb("kernel_vector.mem",kernel_mem);
  end

  clk_generator gen_clk_inst(clk,rst,tstart);

  memref_rd#(.WIDTH(32),.SIZE(64)) 
  port_img_rd(img_mem,img_rd_en, img_addr,/*valid*/ ,img_rd_data,clk);

  memref_rd#(.WIDTH(32),.SIZE(4)) 
  port_kernel_rd(kernel_mem,kernel_rd_en, kernel_addr,/*valid*/ ,kernel_rd_data
    ,clk);

  memref_wr#(.WIDTH(32),.SIZE(64)) 
  port_output_wr(output_mem,output_wr_en, output_addr,output_wr_data,clk);

  convolution_hls_0 your_instance_name (
    .ap_clk(clk),                        // input wire ap_clk
    .ap_rst(tstart),                        // input wire ap_rst
    .img_ce0(img_rd_en),                      // output wire img_ce0
    .img_address0(img_addr),            // output wire [7 : 0] img_address0
    .img_q0(img_rd_data),                        // input wire [31 : 0] img_q0
    .kernel_ce0(kernel_rd_en),                // output wire kernel_ce0
    .kernel_address0(kernel_addr),      // output wire [1 : 0] kernel_address0
    .kernel_q0(kernel_rd_data),                  // input wire [31 : 0] kernel_q0
    .output_r_ce0(),            // output wire output_r_ce0
    .output_r_we0(output_wr_en),            // output wire output_r_we0
    .output_r_address0(output_addr),  // output wire [7 : 0] output_r_address0
    .output_r_d0(output_wr_data)              // output wire [31 : 0] output_r_d0
  );
endmodule
