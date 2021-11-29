module convolution_hls(
 output wire img_ce0,
 output wire kernel_ce0,
 output wire output_r_ce0,
 output wire output_r_we0,
 input wire ap_clk,
 input wire ap_rst,
 input wire ap_start,
 output wire ap_done,
 output wire ap_idle,
 output wire ap_ready,
 output wire [5 : 0] img_address0,
 input wire [31 : 0] img_q0,
 output wire [1 : 0] kernel_address0,
 input wire [31 : 0] kernel_q0,
 output wire [5 : 0] output_r_address0,
 output wire [31 : 0] output_r_d0
);

convolution_hls_0 convolution_hls_instance (
  .img_ce0(img_ce0),                     
  .kernel_ce0(kernel_ce0),               
  .output_r_ce0(output_r_ce0),           
  .output_r_we0(output_r_we0),           
  .ap_clk(ap_clk),                       
  .ap_rst(ap_rst),                       
  .ap_start(ap_start),                   
  .ap_done(ap_done),                     
  .ap_idle(ap_idle),                     
  .ap_ready(ap_ready),                   
  .img_address0(img_address0),           
  .img_q0(img_q0),                       
  .kernel_address0(kernel_address0),     
  .kernel_q0(kernel_q0),                 
  .output_r_address0(output_r_address0), 
  .output_r_d0(output_r_d0)              
);

endmodule
