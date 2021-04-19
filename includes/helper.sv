`include "xil_primitives.sv"
`ifndef HIR_HELPER
  `define HIR_HELPER

  module i32mult_dsp48(p, a, b, tstart, clk);
    output wire[32 - 1 : 0] p;//2 cycle delay.
    input wire[32 - 1 : 0] a; 
    input wire[32 - 1 : 0] b; 
    input wire tstart;
    input wire clk;

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
    input wire tstart,
    input wire clk
  );

    assign out = cond?in1:in2;
  endmodule

  module readTimeVar(
    output wire tout, 
    input wire tin, 
    input wire tstart,
    input wire clk
  );

    reg waiting=1'b0;
    //tstart and waiting should never be true at the same time.
    always@(posedge clk) begin
      if(tin) begin
        waiting <= 1'b0;
      end
      else if(tstart) begin
        waiting <= 1'b1;
      end
    end

    assign tout = ((tstart  || waiting )&& tin)? 1'b1 : 1'b0;

  endmodule

  module weighted_average (
    output reg [31:0] out,
    output wire  i_rd_en[2:0][2:0],
    input wire [31:0] i_rd_data[2:0][2:0],
    input wire tstart,
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
          assign i_rd_en[i][j] = tstart;
        end
      end
    endgenerate
  endmodule

  module weighted_sum (
    output wire[31:0] out,
    input wire[31:0] in1,
    input wire[31:0] w1,
    input wire[31:0] in2,
    input wire[31:0] w2,
    input wire tstart,
    input wire clk
  );
    reg[31:0] m1_reg;
    reg[31:0] m2_reg;
    always@(posedge clk) begin
      m1_reg <= in1*w1;
      m2_reg <= in2*w2;
    end
    assign out = m1_reg+m2_reg;
  endmodule


  module max (
    output reg[31:0] out,
    input wire[31:0] in1,
    input wire[31:0] in2,
    input wire tstart,
    input wire clk
  );
    always@(posedge clk) begin
      out <= (in1>in2)?in1:in2;
    end
  endmodule

  module add(
    output reg[31:0] out,
    input  wire[31:0] in1,
    input  wire[31:0] in2,
    input wire tstart,
    input wire clk
  );
    always@(posedge clk) begin
      out <= in1+in2;
    end
  endmodule

  module i32Adder(
    output wire[31:0] out,
    input  wire[31:0] in1,
    input  wire[31:0] in2,
    input wire tstart,
    input wire clk
  );

    assign  out = in1+in2;  
  endmodule

  module i32Multiplier(
    output wire[31:0] out,
    input  wire[31:0] in1,
    input  wire[31:0] in2,
    input wire tstart,
    input wire clk
  );

    reg[31:0] a1,b1;
    reg[31:0] out2;
    reg[31:0] out3;
    reg[31:0] out4;
    always@(posedge clk) begin
      a1 <= in1;
      b1 <= in2;
      out2 <= a1*b1;
      out3 <= out2;
      out4 <= out3;
    end
    assign out = out4;
  endmodule

  module mult(
    output reg[31:0] out,
    input  wire[31:0] in1,
    input  wire[31:0] in2,
    input wire tstart,
    input wire clk
  );
    reg[31:0] out1;
    always@(posedge clk) begin
      out1 <= in1*in2;
      out <= out1;
    end
  endmodule
`endif
