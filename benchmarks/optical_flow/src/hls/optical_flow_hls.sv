module optical_flow_hls(
  output wire flow_ce0
 , output wire flow_we0
 , output wire img_ce0
 , output wire img_we0
 , output wire prev_ce0
 , output wire prev_we0
 , input wire ap_clk
 , input wire ap_rst
 , input wire ap_start
 , output wire ap_done
 , output wire ap_ready
 , output wire ap_idle
 , output wire [10 : 0] flow_address0
 , output wire [31 : 0] flow_d0
 , input wire [31 : 0] flow_q0
 , output wire [9 : 0] img_address0
 , output wire [31 : 0] img_d0
 , input wire [31 : 0] img_q0
 , output wire [9 : 0] prev_address0
 , output wire [31 : 0] prev_d0
 , input wire [31 : 0] prev_q0
);

//optical_flow_hls_0 your_instance_name (
//  .flow_ce0(flow_ce0),            // output wire flow_ce0
//  .flow_we0(flow_we0),            // output wire flow_we0
//  .img_ce0(img_ce0),              // output wire img_ce0
//  .prev_ce0(prev_ce0),            // output wire prev_ce0
//  .ap_clk(clk),                // input wire ap_clk
//  .ap_rst(rst),                // input wire ap_rst
//  .ap_start(ap_start),            // input wire ap_start
//  .ap_done(ap_done),              // output wire ap_done
//  .ap_idle(ap_idle),              // output wire ap_idle
//  .ap_ready(ap_ready),            // output wire ap_ready
//  .flow_address0(flow_address0),  // output wire [10 : 0] flow_address0
//  .flow_d0(flow_d0),              // output wire [31 : 0] flow_d0
//  .img_address0(img_address0),    // output wire [9 : 0] img_address0
//  .img_q0(img_q0),                // input wire [31 : 0] img_q0
//  .prev_address0(prev_address0),  // output wire [9 : 0] prev_address0
//  .prev_q0(prev_q0)              //  input wire [31 : 0] prev_q0
//);

optical_flow_hls_0 your_instance_name (
  .flow_ce0(flow_ce0),            // output wire flow_ce0
  .flow_we0(flow_we0),            // output wire flow_we0
  .img_ce0(img_ce0),              // output wire img_ce0
  //.img_we0(img_we0),              // output wire img_we0
  .prev_ce0(prev_ce0),            // output wire prev_ce0
  //.prev_we0(prev_we0),            // output wire prev_we0
  .ap_clk(ap_clk),                // input wire ap_clk
  .ap_rst(ap_rst),                // input wire ap_rst
  .ap_start(ap_start),            // input wire ap_start
  .ap_done(ap_done),              // output wire ap_done
  .ap_ready(ap_ready),            // output wire ap_ready
  .ap_idle(ap_idle),              // output wire ap_idle
  .flow_address0(flow_address0),  // output wire [10 : 0] flow_address0
  .flow_d0(flow_d0),              // output wire [31 : 0] flow_d0
  //.flow_q0(flow_q0),              // input wire [31 : 0] flow_q0
  .img_address0(img_address0),    // output wire [9 : 0] img_address0
  //.img_d0(img_d0),                // output wire [31 : 0] img_d0
  .img_q0(img_q0),                // input wire [31 : 0] img_q0
  .prev_address0(prev_address0),  // output wire [9 : 0] prev_address0
  //.prev_d0(prev_d0),              // output wire [31 : 0] prev_d0
  .prev_q0(prev_q0)              // input wire [31 : 0] prev_q0
);
endmodule