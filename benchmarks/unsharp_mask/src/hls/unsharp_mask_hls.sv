module unsharp_mask_hls(
 output wire img_ce0
, output wire mask_img_ce0
, output wire mask_img_we0
, output wire kernelDataX_ce0
, output wire kernelDataY_ce0
, input wire ap_clk
, input wire ap_rst
, input wire ap_start
, output wire ap_done
, output wire ap_idle
, output wire ap_ready
, output wire [9 : 0] img_address0
, input wire [31 : 0] img_q0
, output wire [9 : 0] mask_img_address0
, output wire [31 : 0] mask_img_d0
, output wire [2 : 0] kernelDataX_address0
, input wire [31 : 0] kernelDataX_q0
, output wire [2 : 0] kernelDataY_address0
, input wire [31 : 0] kernelDataY_q0
);
unsharp_mask_hls_0 your_instance_name (
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