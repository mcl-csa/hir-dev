module dus_hls(
  dus_ce0,
  dus_we0,
  img_ce0,
  img_we0,
  clk,
  rst,
  ap_start,
  ap_done,
  ap_ready,
  ap_idle,
  dus_address0,
  dus_d0,
  dus_q0,
  img_address0,
  img_d0,
  img_q0
);

output wire dus_ce0;
output wire dus_we0;
output wire img_ce0;
output wire img_we0;
input wire clk;
input wire rst;
input wire ap_start;
output wire ap_done;
output wire ap_ready;
output wire ap_idle;
output wire [9 : 0] dus_address0;
output wire [31 : 0] dus_d0;
input wire [31 : 0] dus_q0;
output wire [9 : 0] img_address0;
output wire [31 : 0] img_d0;
input wire [31 : 0] img_q0;
  dus_hls_0 inst (
    .dus_ce0(dus_ce0),
    .dus_we0(dus_we0),
    .img_ce0(img_ce0),
    //.img_we0(img_we0),
    .ap_clk(clk),
    .ap_rst(rst),
    .ap_start(ap_start),
    .ap_done(ap_done),
    .ap_ready(ap_ready),
    .ap_idle(ap_idle),
    .dus_address0(dus_address0),
    .dus_d0(dus_d0),
    //.dus_q0(dus_q0),
    .img_address0(img_address0),
    //.img_d0(img_d0),
    .img_q0(img_q0)
  );
endmodule