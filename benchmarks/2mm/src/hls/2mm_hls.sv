module kernel_2mm_hls(
 output wire tmp_ce0
, output wire tmp_ce1
, output wire tmp_we1
, output wire A_ce0
, output wire B_ce0
, output wire C_ce0
, output wire D_ce0
, output wire D_ce1
, output wire D_we1
, input wire clk
, input wire rst
, input wire ap_start
, output wire ap_done
, output wire ap_idle
, output wire ap_ready
, input wire [31 : 0] alpha
, input wire [31 : 0] beta
, output wire [5 : 0] tmp_address0
, input wire [31 : 0] tmp_q0
, output wire [5 : 0] tmp_address1
, output wire [31 : 0] tmp_d1
, output wire [5 : 0] A_address0
, input wire [31 : 0] A_q0
, output wire [5 : 0] B_address0
, input wire [31 : 0] B_q0
, output wire [5 : 0] C_address0
, input wire [31 : 0] C_q0
, output wire [5 : 0] D_address0
, input wire [31 : 0] D_q0
, output wire [5 : 0] D_address1
,output wire [31 : 0] D_d1
);

kernel_2mm_hls_0 your_instance_name (
  .tmp_ce0(tmp_ce0),            // output wire tmp_ce0
  .tmp_ce1(tmp_ce1),            // output wire tmp_ce1
  .tmp_we1(tmp_we1),            // output wire tmp_we1
  .A_ce0(A_ce0),                // output wire A_ce0
  .B_ce0(B_ce0),                // output wire B_ce0
  .C_ce0(C_ce0),                // output wire C_ce0
  .D_ce0(D_ce0),                // output wire D_ce0
  .D_ce1(D_ce1),                // output wire D_ce1
  .D_we1(D_we1),                // output wire D_we1
  .ap_clk(clk),              // input wire ap_clk
  .ap_rst(rst),              // input wire ap_rst
  .ap_start(ap_start),          // input wire ap_start
  .ap_done(ap_done),            // output wire ap_done
  .ap_idle(ap_idle),            // output wire ap_idle
  .ap_ready(ap_ready),          // output wire ap_ready
  .alpha(alpha),                // input wire [31 : 0] alpha
  .beta(beta),                  // input wire [31 : 0] beta
  .tmp_address0(tmp_address0),  // output wire [5 : 0] tmp_address0
  .tmp_q0(tmp_q0),              // input wire [31 : 0] tmp_q0
  .tmp_address1(tmp_address1),  // output wire [5 : 0] tmp_address1
  .tmp_d1(tmp_d1),              // output wire [31 : 0] tmp_d1
  .A_address0(A_address0),      // output wire [5 : 0] A_address0
  .A_q0(A_q0),                  // input wire [31 : 0] A_q0
  .B_address0(B_address0),      // output wire [5 : 0] B_address0
  .B_q0(B_q0),                  // input wire [31 : 0] B_q0
  .C_address0(C_address0),      // output wire [5 : 0] C_address0
  .C_q0(C_q0),                  // input wire [31 : 0] C_q0
  .D_address0(D_address0),      // output wire [5 : 0] D_address0
  .D_q0(D_q0),                  // input wire [31 : 0] D_q0
  .D_address1(D_address1),      // output wire [5 : 0] D_address1
  .D_d1(D_d1)                  // output wire [31 : 0] D_d1
);
endmodule