int add_i32(int a, int b);
int mul_i32(int a, int b);
#pragma HLS extern_func variable = add_i32 latency = 0
#pragma HLS extern_func variable = mul_i32 latency = 1

void gesummv(int alpha, int beta, int tmp[8], int A[8][8], int B[8][8],
             int x[8], int y[8]) {
#pragma HLS INTERFACE port = tmp storage_type = ram_1p wr_latency = 1
#pragma HLS INTERFACE port = A storage_type = ram_1p rd_latency = 1
#pragma HLS INTERFACE port = B storage_type = ram_1p rd_latency = 1
#pragma HLS INTERFACE port = x storage_type = ram_1p rd_latency = 1
#pragma HLS INTERFACE port = y storage_type = ram_1p wr_latency = 1

#pragma scop
  for (int i = 0; i < 8; i++) {
#pragma HLS pipeline II = 180
    int tmp_reg = 0;
    int y_reg = 0;
    for (int j = 0; j < 8; j++) {
#pragma HLS pipeline II = 10
      int xj = x[j];
      int t1 = mul_i32(A[i][j], xj);
      int t2 = mul_i32(B[i][j], xj);
      tmp_reg = add_i32(tmp_reg, t1);
      y_reg = add_i32(y_reg, t2);
    }
    tmp[i] = tmp_reg;
    int y_i = y_reg;
    y[i] = add_i32(mul_i32(alpha, tmp_reg), mul_i32(beta, y_i));
  }
#pragma endscop
}
