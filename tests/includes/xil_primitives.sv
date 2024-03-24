//Block ram True-Dual-Port, Read-First.
`ifndef HIR_XIL_PRIMITIVES
`define HIR_XIL_PRIMITIVES

module bram_r1_w1#(ADDR_WIDTH=4,ELEMENT_WIDTH=16) (
 input wire p0_addr_en,
 input wire [ADDR_WIDTH-1:0] p0_addr_data,
 input wire p0_rd_en,
 output wire[ELEMENT_WIDTH-1:0] p0_rd_data,
 input wire p1_addr_en,
 input wire [ADDR_WIDTH-1:0] p1_addr_data,
 input wire p1_wr_en,
 input wire [ELEMENT_WIDTH-1:0] p1_wr_data,
 input t,
 input clk,
 input rst
);

bram_tdp_rf_rf#(.SIZE(2**ADDR_WIDTH) , .WIDTH(ELEMENT_WIDTH)) bram_inst (
  .clka    (clk             ) ,
  .ena     (p0_addr_en      ) ,
  .wea     (1'b0            ) ,
  .addra   (p0_addr_data    ) ,
  .dia     (0               ) ,
  .doa     (p0_rd_data      ) ,
  .clkb    (clk             ) ,
  .enb     (p1_addr_en      ) ,
  .web     (p1_wr_en        ) ,
  .addrb   (p1_addr_data    ) ,
  .dib     (p1_wr_data      ) ,
  .dob     (/*unconnected*/ )
);

endmodule

module bram_tdp_rf_rf#(SIZE=1024,WIDTH=16) (clka,clkb,ena,enb,wea,web,addra,addrb,dia,dib,doa,dob);
input wire clka,clkb,ena,enb,wea,web;
input wire [$clog2(SIZE)-1:0] addra,addrb;
input wire [WIDTH-1:0] dia,dib;
output reg [WIDTH-1:0] doa,dob;
//(* ram_style = "block" *) reg [WIDTH-1:0] ram [SIZE-1:0];
reg [WIDTH-1:0] ram [SIZE-1:0];
//reg [WIDTH-1:0] doa,dob;
always @(posedge clka)
begin
  if (ena)
  begin
    if (wea)
      ram[addra] <= dia;
    doa <= ram[addra];
  end
end
always @(posedge clkb)
begin
  if (enb)
  begin
    if (web)
      ram[addrb] <= dib;
    dob <= ram[addrb];
  end
end
endmodule

module lutram_r0_w1#(ADDR_WIDTH,ELEMENT_WIDTH=16) (
 input wire p0_addr_en,
 input wire [ADDR_WIDTH-1:0] p0_addr_data,
 input wire p0_rd_en,
 output wire[ELEMENT_WIDTH-1:0] p0_rd_data,
 input wire p1_addr_en,
 input wire [ADDR_WIDTH-1:0] p1_addr_data,
 input wire p1_wr_en,
 input wire [ELEMENT_WIDTH-1:0] p1_wr_data,
 input t,
 input clk,
 input rst
);

lutram_tdp_rf_rf#(.SIZE(2**ADDR_WIDTH) , .WIDTH(ELEMENT_WIDTH)) lutram_inst (
  .clka    (clk             ) ,
  .ena     (p0_addr_en      ) ,
  .wea     (1'b0            ) ,
  .addra   (p0_addr_data    ) ,
  .dia     (0               ) ,
  .doa     (p0_rd_data      ) ,
  .clkb    (clk             ) ,
  .enb     (p1_addr_en      ) ,
  .web     (p1_wr_en        ) ,
  .addrb   (p1_addr_data    ) ,
  .dib     (p1_wr_data      ) ,
  .dob     (/*unconnected*/ )
);

endmodule

module lutram_tdp_rf_rf#(SIZE=1024,WIDTH=16) (clka,clkb,ena,enb,wea,web,addra,addrb,dia,dib,doa,dob);
input wire clka,clkb,ena,enb,wea,web;
input wire [$clog2(SIZE)-1:0] addra,addrb;
input wire [WIDTH-1:0] dia,dib;
output [WIDTH-1:0] doa,dob;
(* ram_style = "distributed" *) reg [WIDTH-1:0] ram [SIZE-1:0];
//reg [WIDTH-1:0] ram [SIZE-1:0];
//reg [WIDTH-1:0] doa,dob;
always @(posedge clka)
begin
  if (ena)
  begin
    if (wea)
      ram[addra] <= dia;
  end
end
assign doa = ram[addra];
always @(posedge clkb)
begin
  if (enb)
  begin
    if (web)
      ram[addrb] <= dib;
  end
end
assign dob = ram[addrb];
endmodule
`endif


