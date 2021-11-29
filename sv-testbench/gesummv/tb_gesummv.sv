`default_nettype none
`define Alpha 1
`define Beta 1
module tb_gesummv();
 tb_gesummv_hir  gesummv_hir_inst();
 tb_gesummv_hls gesummv_hls_inst();
endmodule

module tb_gesummv_hir();

  wire tstart;
  wire clk;
  wire rst;

  wire[31:0] alpha;
  wire[31:0] beta;

  reg[31:0] tmp_mem[7:0];
  wire [2:0] tmp_addr;
  wire       tmp_wr_en;
  wire[31:0] tmp_wr_data;

  reg[31:0] A_mem[63:0];
  wire [5:0] A_addr;
  wire       A_rd_en;
  wire[31:0] A_rd_data;

  reg[31:0] B_mem[63:0];
  wire [5:0] B_addr;
  wire       B_rd_en;
  wire[31:0] B_rd_data;

  reg[31:0] X_mem[7:0];
  wire [2:0] X_addr;
  wire       X_rd_en;
  wire[31:0] X_rd_data;

  reg[31:0] Y_mem[7:0];
  wire [2:0] Y_addr;
  wire       Y_wr_en;
  wire[31:0] Y_wr_data;
  assign alpha = `Alpha;
  assign beta = `Beta;

  initial begin
      $readmemb("A_vector.mem",A_mem);
      $readmemb("B_vector.mem",B_mem);
      $readmemb("X_vector.mem",X_mem);
  end

  
  clk_generator gen_clk_inst(clk,rst,tstart);

  memref_wr#(.WIDTH(32),.SIZE(8)) memref_wr_tmp(tmp_mem,tmp_wr_en, tmp_addr,tmp_wr_data,clk);
  memref_rd#(.WIDTH(32),.SIZE(64)) memref_rd_A(A_mem,A_rd_en, A_addr,/*valid*/ ,A_rd_data,clk);

  memref_rd#(.WIDTH(32),.SIZE(64)) memref_rd_B(B_mem,B_rd_en, B_addr,/*valid*/ ,B_rd_data,clk);
  memref_rd#(.WIDTH(32),.SIZE(8)) memref_rd_X(X_mem,X_rd_en, X_addr,/*valid*/ ,X_rd_data,clk);
  memref_wr#(.WIDTH(32),.SIZE(8)) memref_wr_Y(Y_mem,Y_wr_en, Y_addr,Y_wr_data,clk);

  gesummv_hir gesummv_hir_inst(
    .alpha            ( alpha           ) ,
    .beta             ( beta            ) ,
    .tmp_p0_addr_data ( tmp_addr        ) ,
    .tmp_p0_addr_en   ( /*unconnected*/ ) ,
    .tmp_p0_wr_data   ( tmp_wr_data     ) ,
    .tmp_p0_wr_en     ( tmp_wr_en       ) ,
    .A_p0_addr_data   ( A_addr          ) ,
    .A_p0_addr_en     ( A_rd_en         ) ,
    .A_p0_rd_data     ( A_rd_data       ) ,
    .A_p0_rd_en       ( /*unconnected*/ ) ,
    .B_p0_addr_data   ( B_addr          ) ,
    .B_p0_addr_en     ( /*unconnected*/ ) ,
    .B_p0_rd_data     ( B_rd_data       ) ,
    .B_p0_rd_en       ( B_rd_en         ) ,
    .X_p0_addr_data   ( X_addr          ) ,
    .X_p0_addr_en     ( X_rd_en         ) ,
    .X_p0_rd_data     ( X_rd_data       ) ,
    .X_p0_rd_en       ( /*unconnected*/ ) ,
    .Y_p0_addr_data   ( Y_addr          ) ,
    .Y_p0_addr_en     ( Y_wr_en         ) ,
    .Y_p0_wr_data     ( Y_wr_data       ) ,
    .Y_p0_wr_en       ( /*unconnected*/ ) ,
    .t                ( tstart          ) ,
    .clk              ( clk             ) ,
    .rst              ( rst             )
  );

endmodule

module tb_gesummv_hls();

  wire tstart;
  wire clk;
  wire rst;

  wire[31:0] alpha;
  wire[31:0] beta;

  reg[31:0] tmp_mem[7:0];
  wire [2:0] tmp_addr;
  wire       tmp_wr_en;
  wire[31:0] tmp_wr_data;

  reg[31:0] A_mem[63:0];
  wire [5:0] A_addr;
  wire       A_rd_en;
  wire[31:0] A_rd_data;

  reg[31:0] B_mem[63:0];
  wire [5:0] B_addr;
  wire       B_rd_en;
  wire[31:0] B_rd_data;

  reg[31:0] X_mem[7:0];
  wire [2:0] X_addr;
  wire       X_rd_en;
  wire[31:0] X_rd_data;

  reg[31:0] Y_mem[7:0];
  wire [2:0] Y_addr;
  wire       Y_wr_en;
  wire[31:0] Y_wr_data;

  assign alpha = `Alpha;
  assign beta = `Beta;

  initial begin
      $readmemb("A_vector.mem",A_mem);
      $readmemb("B_vector.mem",B_mem);
      $readmemb("X_vector.mem",X_mem);
  end

  clk_generator gen_clk_inst(clk,rst,tstart);

  memref_rd#(.WIDTH(32),.SIZE(64)) memref_rd_A(A_mem,A_rd_en, A_addr,/*valid*/ ,A_rd_data,clk);
  memref_rd#(.WIDTH(32),.SIZE(64)) memref_rd_B(B_mem,B_rd_en, B_addr,/*valid*/ ,B_rd_data,clk);
  memref_rd#(.WIDTH(32),.SIZE(8)) memref_rd_X(X_mem,X_rd_en, X_addr,/*valid*/ ,X_rd_data,clk);

  memref_wr#(.WIDTH(32),.SIZE(8)) memref_wr_tmp(tmp_mem,tmp_wr_en, tmp_addr,tmp_wr_data,clk);
  memref_wr#(.WIDTH(32),.SIZE(8)) memref_wr_Y(Y_mem,Y_wr_en, Y_addr,Y_wr_data,clk);

gesummv_hls_0 gesummv_hls_inst (
  .ap_clk(clk),            
  .ap_rst(rst),         
  .alpha(alpha),           
  .beta(beta),             
  .tmp_ce0(),              
  .tmp_we0(tmp_wr_en),     
  .tmp_address0(tmp_addr), 
  .tmp_d0(tmp_wr_data),    
  .A_ce0(A_rd_en),         
  .A_address0(A_addr),     
  .A_q0(A_rd_data),        
  .B_ce0(B_rd_en),         
  .B_address0(B_addr),     
  .B_q0(B_rd_data),        
  .x_ce0(X_rd_en),         
  .x_address0(X_addr),     
  .x_q0(X_rd_data),        
  .y_ce0(),                
  .y_we0(Y_wr_en),         
  .y_address0(Y_addr),     
  .y_d0(Y_wr_data),
  .ap_start(tstart), 
  .ap_done(),        
  .ap_idle(),        
  .ap_ready()        
);

endmodule
