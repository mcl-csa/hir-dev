module mul_f32(
    input wire[31:0] a ,
    input  wire[31:0] b , 
    input t  , 
    input clk, 
    input rst, 
    output wire[31:0] out 
  );
    multiplier_f32 inst (
      .aclk(clk),                                  // input wire aclk
      .s_axis_a_tvalid(1'b1),            // input wire s_axis_a_tvalid
      .s_axis_a_tdata(a),              // input wire [31 : 0] s_axis_a_tdata
      .s_axis_b_tvalid(1'b1),            // input wire s_axis_b_tvalid
      .s_axis_b_tdata(b),              // input wire [31 : 0] s_axis_b_tdata
      .m_axis_result_tvalid(),  // output wire m_axis_result_tvalid
      .m_axis_result_tdata(out)    // output wire [31 : 0] m_axis_result_tdata
    );
  endmodule

  module add_f32(
    input wire[31:0] a ,
    input  wire[31:0] b , 
    input t  , 
    input clk, 
    input rst, 
    output wire[31:0] out 
  );
    adder_f32 inst (
      .aclk(clk),                                  // input wire aclk
      .s_axis_a_tvalid(1'b1),            // input wire s_axis_a_tvalid
      .s_axis_a_tdata(a),              // input wire [31 : 0] s_axis_a_tdata
      .s_axis_b_tvalid(1'b1),            // input wire s_axis_b_tvalid
      .s_axis_b_tdata(b),              // input wire [31 : 0] s_axis_b_tdata
      .m_axis_result_tvalid(),  // output wire m_axis_result_tvalid
      .m_axis_result_tdata(out)    // output wire [31 : 0] m_axis_result_tdata
    );
  endmodule


  module sub_f32(
    input wire[31:0] a ,
    input  wire[31:0] b , 
    input t  , 
    input clk, 
    input rst, 
    output wire[31:0] out 
  );
    subtract_f32 inst (
      .aclk(clk),                                  // input wire aclk
      .s_axis_a_tvalid(1'b1),            // input wire s_axis_a_tvalid
      .s_axis_a_tdata(a),              // input wire [31 : 0] s_axis_a_tdata
      .s_axis_b_tvalid(1'b1),            // input wire s_axis_b_tvalid
      .s_axis_b_tdata(b),              // input wire [31 : 0] s_axis_b_tdata
      .m_axis_result_tvalid(),  // output wire m_axis_result_tvalid
      .m_axis_result_tdata(out)    // output wire [31 : 0] m_axis_result_tdata
    );
  endmodule

  module div_f32(
    input wire[31:0] a ,
    input  wire[31:0] b , 
    input t  , 
    input clk, 
    input rst, 
    output wire[31:0] out 
  );
    div_f32_ip inst (
      .aclk(clk),                                  // input wire aclk
      .s_axis_a_tvalid(1'b1),            // input wire s_axis_a_tvalid
      .s_axis_a_tdata(a),              // input wire [31 : 0] s_axis_a_tdata
      .s_axis_b_tvalid(1'b1),            // input wire s_axis_b_tvalid
      .s_axis_b_tdata(b),              // input wire [31 : 0] s_axis_b_tdata
      .m_axis_result_tvalid(),  // output wire m_axis_result_tvalid
      .m_axis_result_tdata(out)    // output wire [31 : 0] m_axis_result_tdata
    );
  endmodule


  module ult_f32(
    input wire[31:0] a ,
    input  wire[31:0] b , 
    input t  , 
    input clk, 
    input rst, 
    output wire out 
  );
  wire[7:0] outp;
    lt_f32 inst (
      .aclk(clk),                                  // input wire aclk
      .s_axis_a_tvalid(1'b1),            // input wire s_axis_a_tvalid
      .s_axis_a_tdata(a),              // input wire [31 : 0] s_axis_a_tdata
      .s_axis_b_tvalid(1'b1),            // input wire s_axis_b_tvalid
      .s_axis_b_tdata(b),              // input wire [31 : 0] s_axis_b_tdata
      .m_axis_result_tvalid(),  // output wire m_axis_result_tvalid
      .m_axis_result_tdata(outp)    // output wire [31 : 0] m_axis_result_tdata
    );
  assign out = outp[0];
  endmodule
  
  module ugt_f32(
    input wire[31:0] a ,
    input  wire[31:0] b , 
    input t, 
    input clk, 
    input rst, 
    output wire[7:0] out 
  );
    gt_f32 inst (
      .aclk(clk),                                  // input wire aclk
      .s_axis_a_tvalid(1'b1),            // input wire s_axis_a_tvalid
      .s_axis_a_tdata(a),              // input wire [31 : 0] s_axis_a_tdata
      .s_axis_b_tvalid(1'b1),            // input wire s_axis_b_tvalid
      .s_axis_b_tdata(b),              // input wire [31 : 0] s_axis_b_tdata
      .m_axis_result_tvalid(),  // output wire m_axis_result_tvalid
      .m_axis_result_tdata(out)    // output wire [31 : 0] m_axis_result_tdata
    );
  endmodule

  module neg_f32(
    input wire[31:0] a,
    output wire[31:0] out,
    input clk,
    input rst,
    input t
  );  
    assign out[30:0]=a[30:0];
    assign out[31]=!a[31];
  endmodule

  module select_f32  (	// unsharp_mask_hir.mlir:237:15
    input wire[7:0] cmp, 
    input wire[31:0] a,   
    input wire[31:0] b,   
    input wire t,   
    input wire clk, 
    input wire rst, 
    output wire[31:0] out 
  );
    wire v = cmp[0];
    assign out = v?a:b;
  endmodule
  
