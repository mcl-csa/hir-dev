module gesummv_hls(
 output wire tmp_ce0,
 output wire tmp_we0,
 output wire A_ce0,
 output wire B_ce0,
 output wire x_ce0,
 output wire y_ce0,
 output wire y_we0,
 input wire ap_clk,
 input wire ap_rst,
 input wire ap_start,
 output wire ap_done,
 output wire ap_idle,
 output wire ap_ready,
 input wire [31 : 0] alpha,
 input wire [31 : 0] beta,
 output wire [2 : 0] tmp_address0,
 output wire [31 : 0] tmp_d0,
 output wire [5 : 0] A_address0,
 input wire [31 : 0] A_q0,
 output wire [5 : 0] B_address0,
 input wire [31 : 0] B_q0,
 output wire [2 : 0] x_address0,
 input wire [31 : 0] x_q0,
 output wire [2 : 0] y_address0,
output wire [31 : 0] y_d0
);

  gesummv_hls_0 your_instance_name (
  .tmp_ce0(tmp_ce0),            //
  .tmp_we0(tmp_we0),            //
  .A_ce0(A_ce0),                //
  .B_ce0(B_ce0),                //
  .x_ce0(x_ce0),                //
  .y_ce0(y_ce0),                //
  .y_we0(y_we0),                //
  .ap_clk(ap_clk),              //
  .ap_rst(ap_rst),              //
  .ap_start(ap_start),          //
  .ap_done(ap_done),            //
  .ap_idle(ap_idle),            //
  .ap_ready(ap_ready),          //
  .alpha(alpha),                //
  .beta(beta),                  //
  .tmp_address0(tmp_address0),  //
  .tmp_d0(tmp_d0),              //
  .A_address0(A_address0),      //
  .A_q0(A_q0),                  //
  .B_address0(B_address0),      //
  .B_q0(B_q0),                  //
  .x_address0(x_address0),      //
  .x_q0(x_q0),                  //
  .y_address0(y_address0),      //
  .y_d0(y_d0)                  // 
);
endmodule
