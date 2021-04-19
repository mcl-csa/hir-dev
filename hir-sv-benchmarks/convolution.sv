`default_nettype none
module convolution(
//Outputs.

//Inputs.

//MemrefType : port = r.
output reg[5:0] v0_addr,
output wire v0_rd_en,
input wire[31:0] v0_rd_data,
//MemrefType : port = r.
output reg[1:0] v1_addr,
output wire v1_rd_en,
input wire[31:0] v1_rd_data,
//MemrefType : port = w.
output reg[5:0] v2_addr,
output wire v2_wr_en,
output reg[31:0] v2_wr_data,
//TimeType.
input wire tstart,
//Clock.
input wire clk
);

wire v0_addr_valid  [0:0] ;
wire [5:0] v0_addr_input  [0:0];
 wire v0_addr_valid_if [0:0]   ;
wire [5:0] v0_addr_input_if [0:0]  ;
 always@(*) begin
if(v0_addr_valid[0] )
v0_addr = v0_addr_input[0];
else
 v0_addr = 'x;
end
assign v0_addr_valid_if[0]  = v0_addr_valid  [0];
assign v0_addr_input_if[0]  = v0_addr_input  [0];

wire [0:0] v0_rd_en_input ;
wire  v0_rd_en_input_if [0:0] ;
assign v0_rd_en  =| v0_rd_en_input ;
assign v0_rd_en_input_if[0] = v0_rd_en_input  [0];


wire v1_addr_valid  [0:0] ;
wire [1:0] v1_addr_input  [0:0];
 wire v1_addr_valid_if [0:0]   ;
wire [1:0] v1_addr_input_if [0:0]  ;
 always@(*) begin
if(v1_addr_valid[0] )
v1_addr = v1_addr_input[0];
else
 v1_addr = 'x;
end
assign v1_addr_valid_if[0]  = v1_addr_valid  [0];
assign v1_addr_input_if[0]  = v1_addr_input  [0];

wire [0:0] v1_rd_en_input ;
wire  v1_rd_en_input_if [0:0] ;
assign v1_rd_en  =| v1_rd_en_input ;
assign v1_rd_en_input_if[0] = v1_rd_en_input  [0];


wire v2_addr_valid  [0:0] ;
wire [5:0] v2_addr_input  [0:0];
 wire v2_addr_valid_if [0:0]   ;
wire [5:0] v2_addr_input_if [0:0]  ;
 always@(*) begin
if(v2_addr_valid[0] )
v2_addr = v2_addr_input[0];
else
 v2_addr = 'x;
end
assign v2_addr_valid_if[0]  = v2_addr_valid  [0];
assign v2_addr_input_if[0]  = v2_addr_input  [0];

wire [0:0] v2_wr_en_input ;
wire  v2_wr_en_input_if [0:0] ;
assign v2_wr_en  =| v2_wr_en_input ;
assign v2_wr_en_input_if[0] = v2_wr_en_input  [0];
wire v2_wr_data_valid  [0:0] ;
wire [31:0] v2_wr_data_input  [0:0];
 wire v2_wr_data_valid_if [0:0]   ;
wire [31:0] v2_wr_data_input_if [0:0]  ;
 always@(*) begin
if(v2_wr_data_valid[0] )
v2_wr_data = v2_wr_data_input[0];
else
 v2_wr_data = 'x;
end
assign v2_wr_data_valid_if[0]  = v2_wr_data_valid  [0];
assign v2_wr_data_input_if[0]  = v2_wr_data_input  [0];


//printTimeOffset
reg tstartdelay[0:0] = '{default:0} ;
always@(*) tstartdelay[0] <= tstart;
generate
genvar i3;

for(i3 = 1; i3<= 0; i3= i3 + 1) begin
always@(posedge clk) begin
tstartdelay[i3] <= tstartdelay[i3-1];
end
end
endgenerate


//AllocaOp at loc("hir-benchmarks/convolution.mlir":11:19)
//strMemrefInstDecl
wire v4_rd_en[0:0];
logic[31:0] v4_rd_data[0:0];
//strMemrefSelDecl
wire [1:0] v4_rd_en_input [0:0];
wire  v4_rd_en_input_if [1:0] [0:0];
generate
for(genvar i0 = 0; i0 < 1;i0=i0 + 1) begin
assign v4_rd_en [i0] =| v4_rd_en_input [i0];
assign v4_rd_en_input_if[0][i0] = v4_rd_en_input [i0] [0];
assign v4_rd_en_input_if[1][i0] = v4_rd_en_input [i0] [1];
end
endgenerate


//strMemrefInstDecl
 wire v5_wr_en[0:0];
reg[31:0] v5_wr_data[0:0];
//strMemrefSelDecl
wire [1:0] v5_wr_en_input [0:0];
wire  v5_wr_en_input_if [1:0] [0:0];
generate
for(genvar i0 = 0; i0 < 1;i0=i0 + 1) begin
assign v5_wr_en [i0] =| v5_wr_en_input [i0];
assign v5_wr_en_input_if[0][i0] = v5_wr_en_input [i0] [0];
assign v5_wr_en_input_if[1][i0] = v5_wr_en_input [i0] [1];
end
endgenerate
wire v5_wr_data_valid [0:0] [1:0] ;
wire [31:0] v5_wr_data_input [0:0] [1:0];
 wire v5_wr_data_valid_if [1:0] [0:0]  ;
wire [31:0] v5_wr_data_input_if [1:0] [0:0] ;
 generate
for(genvar i0 = 0; i0 < 1;i0=i0 + 1) begin
always@(*) begin
if(v5_wr_data_valid[i0][0] )
v5_wr_data[i0] = v5_wr_data_input[i0][0];
else if (v5_wr_data_valid[i0][1])
v5_wr_data[i0] = v5_wr_data_input[i0][1];
else
 v5_wr_data[i0] = 'x;
end
assign v5_wr_data_valid_if[0] [i0] = v5_wr_data_valid [i0] [0];
assign v5_wr_data_input_if[0] [i0] = v5_wr_data_input [i0] [0];
assign v5_wr_data_valid_if[1] [i0] = v5_wr_data_valid [i0] [1];
assign v5_wr_data_input_if[1] [i0] = v5_wr_data_input [i0] [1];
end
endgenerate



 //Instantiate Memory.
for(genvar i0= 0; i0<1;i0+=1) begin
always@(posedge clk) begin
  if(v5_wr_en[i0]) v4_rd_data[i0] <= v5_wr_data[i0];
end
end

//ConstantOp at loc("hir-benchmarks/convolution.mlir":14:8)
//constant v6 = 1'd0;

//ConstantOp at loc("hir-benchmarks/convolution.mlir":15:8)
//constant v7 = 1'd1;

//ConstantOp at loc("hir-benchmarks/convolution.mlir":16:8)
//constant [1:0] v8 = 2'd2;

//ConstantOp at loc("hir-benchmarks/convolution.mlir":17:8)
//constant [1:0] v9 = 2'd3;

//ConstantOp at loc("hir-benchmarks/convolution.mlir":18:8)
//constant [2:0] v10 = 3'd4;

//ConstantOp at loc("hir-benchmarks/convolution.mlir":19:8)
//constant [2:0] v11 = 3'd7;

//ForOp at loc("hir-benchmarks/convolution.mlir":22:3)

//{ Loop12

reg[2:0] idx12 ;
reg[2:0] ub12 ;
reg[0:0] step12 ;
wire tloop_in12;
reg tloop12;
reg tfinish12;
always@(posedge clk) begin
 if(/*tstart=*/ tstart) begin
   idx12 <= /*v6=*/ 1'd0; //lower bound.
   step12 <= /*v7=*/ 1'd1;
   ub12 <= /*v11=*/ 3'd7;
   tloop12 <= (/*v11=*/ 3'd7 > /*v6=*/ 1'd0);
   tfinish12 <=!(/*v11=*/ 3'd7 > /*v6=*/ 1'd0);
 end
 else if (tloop_in12) begin
   idx12 <= idx12 + step12; //increment
   tloop12 <= (idx12 + step12) < ub12;
   tfinish12 <= !((idx12 + step12) < ub12);
 end
 else begin
   tloop12 <= 1'b0;
   tfinish12 <= 1'b0;
 end
end
//Loop12 body
//printTimeOffset
reg tloop12delay[0:0] = '{default:0} ;
always@(*) tloop12delay[0] <= tloop12;
generate
genvar i13;

for(i13 = 1; i13<= 0; i13= i13 + 1) begin
always@(posedge clk) begin
tloop12delay[i13] <= tloop12delay[i13-1];
end
end
endgenerate


//ForOp at loc("hir-benchmarks/convolution.mlir":25:9)

//{ Loop14

reg[2:0] idx14 ;
reg[2:0] ub14 ;
reg[0:0] step14 ;
wire tloop_in14;
reg tloop14;
reg tfinish14;
always@(posedge clk) begin
 if(/*tstart=*/ tloop12) begin
   idx14 <= /*v6=*/ 1'd0; //lower bound.
   step14 <= /*v7=*/ 1'd1;
   ub14 <= /*v11=*/ 3'd7;
   tloop14 <= (/*v11=*/ 3'd7 > /*v6=*/ 1'd0);
   tfinish14 <=!(/*v11=*/ 3'd7 > /*v6=*/ 1'd0);
 end
 else if (tloop_in14) begin
   idx14 <= idx14 + step14; //increment
   tloop14 <= (idx14 + step14) < ub14;
   tfinish14 <= !((idx14 + step14) < ub14);
 end
 else begin
   tloop14 <= 1'b0;
   tfinish14 <= 1'b0;
 end
end
//Loop14 body
//printTimeOffset
reg tloop14delay[3:0] = '{default:0} ;
always@(*) tloop14delay[0] <= tloop14;
generate
genvar i15;

for(i15 = 1; i15<= 3; i15= i15 + 1) begin
always@(posedge clk) begin
tloop14delay[i15] <= tloop14delay[i15-1];
end
end
endgenerate


//StoreOp at loc("hir-benchmarks/convolution.mlir":28:7)
assign v5_wr_en_input[/*v6=*/ 0][0] = tloop14delay[3];
assign v5_wr_data_valid[/*v6=*/ 0][0] = tloop14delay[3];
assign v5_wr_data_input[/*v6=*/ 0][0] = /*v6=*/ 1'd0;


//ForOp at loc("hir-benchmarks/convolution.mlir":31:12)

//{ Loop16

reg[2:0] idx16 ;
reg[1:0] ub16 ;
reg[0:0] step16 ;
wire tloop_in16;
reg tloop16;
reg tfinish16;
always@(posedge clk) begin
 if(/*tstart=*/ tloop14) begin
   idx16 <= /*v6=*/ 1'd0; //lower bound.
   step16 <= /*v7=*/ 1'd1;
   ub16 <= /*v8=*/ 2'd2;
   tloop16 <= (/*v8=*/ 2'd2 > /*v6=*/ 1'd0);
   tfinish16 <=!(/*v8=*/ 2'd2 > /*v6=*/ 1'd0);
 end
 else if (tloop_in16) begin
   idx16 <= idx16 + step16; //increment
   tloop16 <= (idx16 + step16) < ub16;
   tfinish16 <= !((idx16 + step16) < ub16);
 end
 else begin
   tloop16 <= 1'b0;
   tfinish16 <= 1'b0;
 end
end
//Loop16 body
//printTimeOffset
reg tloop16delay[0:0] = '{default:0} ;
always@(*) tloop16delay[0] <= tloop16;
generate
genvar i17;

for(i17 = 1; i17<= 0; i17= i17 + 1) begin
always@(posedge clk) begin
tloop16delay[i17] <= tloop16delay[i17-1];
end
end
endgenerate


//ForOp at loc("hir-benchmarks/convolution.mlir":34:14)

//{ Loop18

reg[2:0] idx18 ;
reg[1:0] ub18 ;
reg[0:0] step18 ;
wire tloop_in18;
reg tloop18;
reg tfinish18;
always@(posedge clk) begin
 if(/*tstart=*/ tloop16) begin
   idx18 <= /*v6=*/ 1'd0; //lower bound.
   step18 <= /*v7=*/ 1'd1;
   ub18 <= /*v8=*/ 2'd2;
   tloop18 <= (/*v8=*/ 2'd2 > /*v6=*/ 1'd0);
   tfinish18 <=!(/*v8=*/ 2'd2 > /*v6=*/ 1'd0);
 end
 else if (tloop_in18) begin
   idx18 <= idx18 + step18; //increment
   tloop18 <= (idx18 + step18) < ub18;
   tfinish18 <= !((idx18 + step18) < ub18);
 end
 else begin
   tloop18 <= 1'b0;
   tfinish18 <= 1'b0;
 end
end
//Loop18 body
//printTimeOffset
reg tloop18delay[3:0] = '{default:0} ;
always@(*) tloop18delay[0] <= tloop18;
generate
genvar i19;

for(i19 = 1; i19<= 3; i19= i19 + 1) begin
always@(posedge clk) begin
tloop18delay[i19] <= tloop18delay[i19-1];
end
end
endgenerate


//AddOp at loc("hir-benchmarks/convolution.mlir":36:19)
wire [2:0] v20 = idx12 + idx16;

//AddOp at loc("hir-benchmarks/convolution.mlir":38:19)
wire [2:0] v21 = idx14 + idx18;

//LoadOp at loc("hir-benchmarks/convolution.mlir":40:17)
assign v0_addr_valid[0] = tloop18;
assign v0_addr_input[0] = {v20[2:0], v21[2:0]};
wire[31:0] v22 = v0_rd_data;
assign v0_rd_en_input[0] = tloop18;


//LoadOp at loc("hir-benchmarks/convolution.mlir":43:17)
assign v1_addr_valid[0] = tloop18;
assign v1_addr_input[0] = {idx16[0:0], idx18[0:0]};
wire[31:0] v23 = v1_rd_data;
assign v1_rd_en_input[0] = tloop18;


//CallOp at loc("hir-benchmarks/convolution.mlir":46:18)
wire [31:0] v24;
i32mult_dsp48 i32mult_dsp4825(v24,
v22,
v23,
tloop18delay[1],
clk
);

//LoadOp at loc("hir-benchmarks/convolution.mlir":49:17)
wire[31:0] v26 = v4_rd_data[/*v6=*/ 0];
assign v4_rd_en_input[/*v6=*/ 0][0] = tloop18delay[3];


//AddOp at loc("hir-benchmarks/convolution.mlir":52:18)
wire [31:0] v27 = v24 + v26;

//StoreOp at loc("hir-benchmarks/convolution.mlir":54:11)
assign v5_wr_en_input[/*v6=*/ 0][1] = tloop18delay[3];
assign v5_wr_data_valid[/*v6=*/ 0][1] = tloop18delay[3];
assign v5_wr_data_input[/*v6=*/ 0][1] = v27;


//YieldOp at loc("hir-benchmarks/convolution.mlir":57:11)
assign tloop_in18 = tloop18;

//TerminatorOp

//} Loop18
//printTimeOffset
reg tfinish18delay[0:0] = '{default:0} ;
always@(*) tfinish18delay[0] <= tfinish18;
generate
genvar i28;

for(i28 = 1; i28<= 0; i28= i28 + 1) begin
always@(posedge clk) begin
tfinish18delay[i28] <= tfinish18delay[i28-1];
end
end
endgenerate


//YieldOp at loc("hir-benchmarks/convolution.mlir":59:9)
assign tloop_in16 = tfinish18;

//TerminatorOp

//} Loop16
//printTimeOffset
reg tfinish16delay[3:0] = '{default:0} ;
always@(*) tfinish16delay[0] <= tfinish16;
generate
genvar i29;

for(i29 = 1; i29<= 3; i29= i29 + 1) begin
always@(posedge clk) begin
tfinish16delay[i29] <= tfinish16delay[i29-1];
end
end
endgenerate


//LoadOp at loc("hir-benchmarks/convolution.mlir":62:12)
wire[31:0] v30 = v4_rd_data[/*v6=*/ 0];
assign v4_rd_en_input[/*v6=*/ 0][1] = tfinish16delay[3];


//DelayOp at loc("hir-benchmarks/convolution.mlir":64:13)
reg[2:0]shiftreg32[/*v9=*/ 3:0] = '{default:0};
always@(*) shiftreg32[0] <= idx12;
always@(posedge clk) shiftreg32[/*v9=*/ 3:1] <= shiftreg32[/*v9=*/ 2:0];
wire [2:0] v31 = shiftreg32[/*v9=*/ 3];

//DelayOp at loc("hir-benchmarks/convolution.mlir":65:13)
reg[2:0]shiftreg34[/*v9=*/ 3:0] = '{default:0};
always@(*) shiftreg34[0] <= idx14;
always@(posedge clk) shiftreg34[/*v9=*/ 3:1] <= shiftreg34[/*v9=*/ 2:0];
wire [2:0] v33 = shiftreg34[/*v9=*/ 3];

//StoreOp at loc("hir-benchmarks/convolution.mlir":66:7)
assign v2_addr_valid[0] = tfinish16delay[3];
assign v2_addr_input[0] = {v31[2:0], v33[2:0]};
assign v2_wr_en_input[0] = tfinish16delay[3];
assign v2_wr_data_valid[0] = tfinish16delay[3];
assign v2_wr_data_input[0] = v30;


//YieldOp at loc("hir-benchmarks/convolution.mlir":68:7)
assign tloop_in14 = tfinish16;

//TerminatorOp

//} Loop14
//printTimeOffset
reg tfinish14delay[0:0] = '{default:0} ;
always@(*) tfinish14delay[0] <= tfinish14;
generate
genvar i35;

for(i35 = 1; i35<= 0; i35= i35 + 1) begin
always@(posedge clk) begin
tfinish14delay[i35] <= tfinish14delay[i35-1];
end
end
endgenerate


//YieldOp at loc("hir-benchmarks/convolution.mlir":70:5)
assign tloop_in12 = tfinish14;

//TerminatorOp

//} Loop12
//printTimeOffset
reg tfinish12delay[0:0] = '{default:0} ;
always@(*) tfinish12delay[0] <= tfinish12;
generate
genvar i36;

for(i36 = 1; i36<= 0; i36= i36 + 1) begin
always@(posedge clk) begin
tfinish12delay[i36] <= tfinish12delay[i36-1];
end
end
endgenerate


//ReturnOp at loc("hir-benchmarks/convolution.mlir":72:3)
endmodule
