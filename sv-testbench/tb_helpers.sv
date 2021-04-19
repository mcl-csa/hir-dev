module generate_clk(clk);
  output reg clk;// = 1'b0;

  initial begin
    clk <= 1'b0;
  end

  always begin
    #1
    clk <= !clk;
  end
endmodule

module generate_tstart(tstart);
  output reg tstart;
  initial begin
    tstart <= 1'b0;
    #3 tstart <= 1'b1;
    #2 tstart <= 1'b0;
  end
endmodule

module memref_wr(mem,wr_en,addr,din,clk); 
  parameter WIDTH = 32;
  parameter SIZE = 1;

  ref reg[WIDTH-1:0] mem[SIZE-1:0];
  input wire wr_en;
  input wire [$clog2(SIZE)-1:0] addr;
  input reg[WIDTH-1:0] din;
  input wire clk;

  always@(posedge clk) begin
    if(wr_en) begin
      mem[addr] <= din;
    end
  end
endmodule

module  memref_rd#(WIDTH=32,SIZE=8)( 

  ref reg[WIDTH-1:0] mem[SIZE-1:0],
  input wire rd_en,
  input wire [$clog2(SIZE)-1:0] addr,
  output reg dout_valid,
  output reg[WIDTH-1:0] dout,
  input wire clk);
  always@(posedge clk) begin
    if(rd_en) begin
      dout <= mem[addr];
      dout_valid <= 1'b1;
    end
    else begin
      dout <= 'X;
      dout_valid <= 1'b0;
    end
  end
endmodule
