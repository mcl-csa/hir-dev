`ifndef FP_HELPER
`define FP_HELPER

module delay_f32
    #(DELAY = 1)
    (output wire [31 : 0] outp,
     input wire [31 : 0] inp,
     input clk);
  initial
    assert (DELAY >= 0); // Use normal delay otherwise.

  generate
    if (DELAY == 0)
      assign outp = inp;
    else begin
      reg [31 : 0] shiftreg[1 : DELAY];
      always @(posedge clk) begin
        shiftreg[1] <= inp;
      end
      genvar i;
      for (i = 2; i <= DELAY; i++) begin
        always @(posedge clk) begin
          shiftreg[i] <= shiftreg[i - 1];
        end
      end
      assign outp = shiftreg[DELAY];
    end
  endgenerate
endmodule

module add_f32
    (output reg [31 : 0] out,
     input wire [31 : 0] a,
     input wire [31 : 0] b,
     input wire t,
     input wire clk,
     input wire rst);
  reg [31 : 0] tmp;
  always @*
    tmp = $c32("add_f32_hw(", a, ",", b, ")");
  delay_f32 #(.DELAY(5))
      delay_inst(.inp(tmp),
                 .outp(out),
                 .clk(clk));
endmodule

module sub_f32
    (output reg [31 : 0] out,
     input wire [31 : 0] a,
     input wire [31 : 0] b,
     input wire t,
     input wire clk,
     input wire rst);

  reg [31 : 0] tmp;
  always @*
    tmp = $c32("sub_f32_hw(", a, ",", b, ")");
  delay_f32 #(.DELAY(5))
      delay_inst(.inp(tmp),
                 .outp(out),
                 .clk(clk));
endmodule

module mul_f32
    (output reg [31 : 0] out,
     input wire [31 : 0] a,
     input wire [31 : 0] b,
     input wire t,
     input wire clk,
     input wire rst);

  reg [31 : 0] tmp;
  always @*
    tmp = $c32("mul_f32_hw(", a, ",", b, ")");
  delay_f32 #(.DELAY(4))
      delay_inst(.inp(tmp),
                 .outp(out),
                 .clk(clk));
endmodule

module neg_f32
    (output reg [31 : 0] out,
     input wire [31 : 0] a,
     input wire t,
     input wire clk,
     input wire rst);
  // FIXME: Add proper delay.
  always @(posedge clk) begin
    out <= $c32("neg_f32_hw(", a, ")");
  end
endmodule

module select_f32
    (output reg [31 : 0] out,
     input wire [7 : 0] cmp,
     input wire [31 : 0] a,
     input wire [31 : 0] b,
     input wire t,
     input wire clk,
     input wire rst);
  always @* begin
    out = $c32("select_f32_hw(", cmp, ",", a, ",", b, ")");
  end
endmodule

module ugt_f32
    (output reg [7 : 0] out,
     input wire [31 : 0] a,
     input wire [31 : 0] b,
     input wire t,
     input wire clk,
     input wire rst);
  always @(posedge clk) begin
    out <= $c8("ugt_f32_hw(", a, ",", b, ")");
  end
endmodule

`endif
