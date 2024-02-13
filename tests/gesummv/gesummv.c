int add_i32(int a, int b);
int mul_i32(int a, int b);
#pragma HLS extern_func variable = add_i32 latency = 0
#pragma HLS extern_func variable = mul_i32 latency = 1

void gesummv_hir(int alpha, int beta, int tmp[8], int A[8][8], int B[8][8],
                 int X[8], int Y[8]) {
#pragma HLS INTERFACE port = tmp storage_type = ram_1p wr_latency = 1
#pragma HLS INTERFACE port = A storage_type = ram_1p rd_latency = 1
#pragma HLS INTERFACE port = B storage_type = ram_1p rd_latency = 1
#pragma HLS INTERFACE port = X storage_type = ram_1p rd_latency = 1
#pragma HLS INTERFACE port = Y storage_type = ram_1p wr_latency = 1

  // #pragma scop
  for (int i = 0; i < 8; i++) {
    #pragma HLS pipeline II = 18
    int tmp_reg[1] = {0};
    int y_reg = 0;
    for (int j = 0; j < 8; j++) {
      #pragma HLS pipeline II = 1
      int xj = X[j];
      int t1 = mul_i32(A[i][j], xj);
      int t2 = mul_i32(B[i][j], xj);

      tmp_reg[0] += t1;
      y_reg = y_reg + t2;
    }
    tmp[i] = tmp_reg[0];
    int y_i = y_reg;
    Y[i] = mul_i32(alpha, tmp_reg[0])+ mul_i32(beta, y_i);
  }
  // #pragma endscop
}
