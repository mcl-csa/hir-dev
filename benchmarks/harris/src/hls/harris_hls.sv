module harris_hls(
output wire harris_ce0
,output wire harris_we0
,output wire img_ce0
,input wire clk
,input wire rst
,input wire ap_start
,output wire ap_done
,output wire ap_idle
,output wire ap_ready
,output wire [7 : 0] harris_address0
,output wire [31 : 0] harris_d0
,output wire [7 : 0] img_address0
,input wire [31 : 0] img_q0
);

harris_hls_0 your_instance_name (
  .harris_ce0(harris_ce0),            // output wire harris_ce0
  .harris_we0(harris_we0),            // output wire harris_we0
  .img_ce0(img_ce0),                  // output wire img_ce0
  .ap_clk(clk),                    // input wire ap_clk
  .ap_rst(rst),                    // input wire ap_rst
  .ap_start(ap_start),                // input wire ap_start
  .ap_done(ap_done),                  // output wire ap_done
  .ap_idle(ap_idle),                  // output wire ap_idle
  .ap_ready(ap_ready),                // output wire ap_ready
  .harris_address0(harris_address0),  // output wire [9 : 0] harris_address0
  .harris_d0(harris_d0),              // output wire [31 : 0] harris_d0
  .harris_q0(32'd0),
  .img_address0(img_address0),        // output wire [9 : 0] img_address0
  .img_q0(img_q0)                    // input wire [31 : 0] img_q0
);
endmodule