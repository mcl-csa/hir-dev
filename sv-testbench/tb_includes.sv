module delay #(DELAY=1, WIDTH=32)( 
   input wire [WIDTH-1:0] in,
   output wire [WIDTH-1:0] out,
   input wire clk
);

reg [DELAY-1:0][WIDTH-1:0] arr;
always@(posedge clk) begin
    arr[1] <= in;
    arr[DELAY-1:0] <= {arr[DELAY-2:0],in};
end
assign out = arr[DELAY-1];
endmodule

module gt_f32 (
    input wire aclk,
    input wire s_axis_a_tvalid,
    input wire [31 : 0] s_axis_a_tdata,
    input wire s_axis_b_tvalid,
    input wire [31 : 0] s_axis_b_tdata,
    output wire m_axis_result_tvalid,
    output wire m_axis_result_tdata
  );
    assign m_axis_result_tvalid = s_axis_a_tvalid & s_axis_b_tvalid;
    real a = s_axis_a_tdata;
    real b = s_axis_b_tdata;
    assign m_axis_result_tdata = (a>b)?1'b1:1'b0;
endmodule

module lt_f32 (
    input wire aclk,
    input wire s_axis_a_tvalid,
    input wire [31 : 0] s_axis_a_tdata,
    input wire s_axis_b_tvalid,
    input wire [31 : 0] s_axis_b_tdata,
    output wire m_axis_result_tvalid,
    output wire m_axis_result_tdata
  );
    assign m_axis_result_tvalid = s_axis_a_tvalid & s_axis_b_tvalid;
    real a = s_axis_a_tdata;
    real b = s_axis_b_tdata;
    assign m_axis_result_tdata = (a<b)?1'b1:1'b0;
endmodule

module multiplier_f32 (
    input wire aclk,
    input wire s_axis_a_tvalid,
    input wire [31 : 0] s_axis_a_tdata,
    input wire s_axis_b_tvalid,
    input wire [31 : 0] s_axis_b_tdata,
    output wire m_axis_result_tvalid,
    output wire m_axis_result_tdata
  );
    assign m_axis_result_tvalid = s_axis_a_tvalid & s_axis_b_tvalid;
    real a = s_axis_a_tdata;
    real b = s_axis_b_tdata;
    wire[31:0] tdata = a*b;
    wire tvalid = s_axis_a_tvalid & s_axis_b_tvalid;
    delay #(.DELAY(12),.WIDTH(32)) delay_data (.in(tdata),.out(m_axis_result_tdata),.clk(aclk));
    delay #(.DELAY(12),.WIDTH(1)) delay_valid (.in(tvalid),.out(m_axis_result_tvalid),.clk(aclk));
endmodule

module adder_f32 (
    input wire aclk,
    input wire s_axis_a_tvalid,
    input wire [31 : 0] s_axis_a_tdata,
    input wire s_axis_b_tvalid,
    input wire [31 : 0] s_axis_b_tdata,
    output wire m_axis_result_tvalid,
    output wire m_axis_result_tdata
  );
    assign m_axis_result_tvalid = s_axis_a_tvalid & s_axis_b_tvalid;
     a = s_axis_a_tdata;
    shortreal b = s_axis_b_tdata;
    shortreal res = a+b;
    wire[31:0] tdata = $realtobits(res);
    wire tvalid = s_axis_a_tvalid & s_axis_b_tvalid;
    delay #(.DELAY(12),.WIDTH(32)) delay_data (.in(tdata),.out(m_axis_result_tdata),.clk(aclk));
    delay #(.DELAY(12),.WIDTH(1)) delay_valid (.in(tvalid),.out(m_axis_result_tvalid),.clk(aclk));
endmodule