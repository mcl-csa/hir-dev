`ifndef HIR_HELPER
  `define HIR_HELPER
  //`default_nettype none
  module reg_r0_w1 #(
    ELEMENT_WIDTH=64'd1
  ) (	
    input wire p0_rd_en,   
    output wire[ELEMENT_WIDTH-1:0] p0_rd_data ,
    input wire p1_wr_en,   
    input wire[ELEMENT_WIDTH-1:0] p1_wr_data, 
    input wire t,
    input wire clk,   
    input wire rst   
  ); 
    reg[ELEMENT_WIDTH-1:0] register=0;
    always @(posedge clk)begin
      if(rst) begin
        register <= 0;
      end 
      else if(p1_wr_en) begin
        register <= p1_wr_data;
      end
    end
    assign p0_rd_data = register;
  endmodule

  module i32mult_dsp48(p, a, b, t, clk,rst);
    output wire[32 - 1 : 0] p;//2 cycle delay.
    input wire[32 - 1 : 0] a; 
    input wire[32 - 1 : 0] b; 
    input wire t;
    input wire clk;
    input wire rst;

    reg signed [32 - 1 : 0] a_reg0;
    reg signed [32 - 1 : 0] b_reg0;
    wire signed [32 - 1 : 0] tmp_product;
    reg signed [32 - 1 : 0] buff0;

    assign p = buff0;
    assign tmp_product = a_reg0 * b_reg0;
    always @ (posedge clk) begin
      a_reg0 <= a;
      b_reg0 <= b;
      buff0 <= tmp_product;
    end
  endmodule

  module mux (
    output wire[31:0] out,
    input wire cond,
    input wire[31:0] in1,
    input wire[31:0] in2,
    input wire t,
    input wire clk
  );

    assign out = cond?in1:in2;
  endmodule

  module readTimeVar(
    output wire tout, 
    input wire tin, 
    input wire t,
    input wire clk
  );

    reg waiting=1'b0;
    //t and waiting should never be true at the same time.
    always@(posedge clk) begin
      if(tin) begin
        waiting <= 1'b0;
      end
      else if(t) begin
        waiting <= 1'b1;
      end
    end

    assign tout = ((t  || waiting )&& tin)? 1'b1 : 1'b0;

  endmodule

  module weighted_average (
    output reg [31:0] out,
    output wire  i_rd_en[2:0][2:0],
    input wire [31:0] i_rd_data[2:0][2:0],
    input wire t,
    input wire clk
  );
    reg [31:0] out0,out1,out2;
    always@(posedge clk) begin
      out0 <= i_rd_data[0][0]/16+i_rd_data[0][1]/8+i_rd_data[0][2]/16;
      out1 <= i_rd_data[1][0]/8+i_rd_data[1][1]/4+i_rd_data[1][2]/8;
      out2 <= i_rd_data[2][0]/16+i_rd_data[2][1]/8+i_rd_data[2][2]/16;
      out <= out0+out1+out2;
    end

    //Assign enable signals.
    generate
      for(genvar i=0;i<3;i++) begin
        for(genvar j=0;j<3;j++) begin
          assign i_rd_en[i][j] = t;
        end
      end
    endgenerate
  endmodule

  module weighted_sum (
    output wire[31:0] result,
    input wire[31:0] v0,
    input wire[31:0] wt0,
    input wire[31:0] v1,
    input wire[31:0] wt1,
    input wire t,
    input wire rst,
    input wire clk
  );
    reg[31:0] m0_reg;
    reg[31:0] m1_reg;
    always@(posedge clk) begin
      m0_reg <= v0*wt0;
      m1_reg <= v1*wt1;
    end
    assign result = m0_reg+m1_reg;
  endmodule


  module i32Multiplier(
    output wire[31:0] result,
    input  wire[31:0] a,
    input  wire[31:0] b,
    input wire t,
    input wire rst,
    input wire clk
  );

    reg[31:0] a1,b1;
    reg[31:0] out2;
    reg[31:0] out3;
    reg[31:0] out4;
    always@(posedge clk) begin
      a1 <= a;
      b1 <= b;
      out2 <= a1*b1;
      out3 <= out2;
      out4 <= out3;
    end
    assign result = out4;
  endmodule

  module mult(
    output reg[31:0] result,
    input  wire[31:0] a,
    input  wire[31:0] b,
    input wire t,
    input wire clk,
    input wire rst
  );
    reg[31:0] product;
    always@(posedge clk) begin
      product <= a*b;
      result <= product;
    end
  endmodule

  module add_i32(
    output wire[31:0] out,
    input wire[31:0] a,
    input wire [31:0] b,
    input wire t,
    input wire clk,
    input wire rst
  );
    assign out = a+b;
  endmodule

  module mul_i32(
    output reg[31:0] out,
    input wire[31:0] a,
    input wire [31:0] b,
    input wire t,
    input wire clk,
    input wire rst
  );
    wire [31:0] prod;
    assign prod = a*b;
    always@(posedge clk)begin
      out <=prod;
    end
  endmodule

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
  module ult_f32(
    input wire[31:0] a ,
    input  wire[31:0] b , 
    input t  , 
    input clk, 
    input rst, 
    output wire out 
  );
    lt_f32 inst (
      .aclk(clk),                                  // input wire aclk
      .s_axis_a_tvalid(1'b1),            // input wire s_axis_a_tvalid
      .s_axis_a_tdata(a),              // input wire [31 : 0] s_axis_a_tdata
      .s_axis_b_tvalid(1'b1),            // input wire s_axis_b_tvalid
      .s_axis_b_tdata(b),              // input wire [31 : 0] s_axis_b_tdata
      .m_axis_result_tvalid(),  // output wire m_axis_result_tvalid
      .m_axis_result_tdata(out)    // output wire [31 : 0] m_axis_result_tdata
    );
  endmodule
  module ugt_f32(
    input wire[31:0] a ,
    input  wire[31:0] b , 
    input t  , 
    input clk, 
    input rst, 
    output wire out 
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
    input t);
    assign out[30:0]=a[30:0];
    assign out[31]=!a[31];
  endmodule

  module select_f32  (	// unsharp_mask_hir.mlir:237:15
    input wire[31:0] cmp, 
    input wire[31:0] a,   
    input wire[31:0] b,   
    input wire t,   
    input wire clk, 
    input wire rst, 
    output wire[31:0] out 
  );
    assign out = cmp[0]?a:b;
  endmodule
  module extsi_i1_i32  (	// unsharp_mask_hir.mlir:231:15
    input wire a,   
    input wire t,   
    input wire clk, 
    input wire rst, 
    output wire[31:0] out 
  );
    assign out = {31'b0,a};
  endmodule
`endif
