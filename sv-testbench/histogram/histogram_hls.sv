module histogram_hls (
output wire A_ce0,
output wire B_ce0,
output wire B_we0,
input wire ap_clk,
input wire ap_rst,
input wire ap_start,
output wire ap_done,
output wire ap_idle,
output wire ap_ready,
output wire [7 : 0] A_address0,
input wire [7 : 0] A_q0,
output wire [7 : 0] B_address0,
output wire [31 : 0] B_d0
);

histogram_hls_0 your_instance_name (
  .A_ce0(A_ce0),            // 
  .B_ce0(B_ce0),            // 
  .B_we0(B_we0),            // 
  .ap_clk(ap_clk),          // 
  .ap_rst(ap_rst),          // 
  .ap_start(ap_start),      // 
  .ap_done(ap_done),        // 
  .ap_idle(ap_idle),        // 
  .ap_ready(ap_ready),      // 
  .A_address0(A_address0),  // 
  .A_q0(A_q0),              // 
  .B_address0(B_address0),  // 
  .B_d0(B_d0)              //  
);

endmodule
