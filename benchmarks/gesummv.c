//This is generated from Dahlia.
//Added modifications:
// - Updated the types to int from ap_int.
// - Added #pragma scop/endscop.
void gesummv(int alpha, int beta, int tmp[8],
                 int A[8][8], int B[8][8], int x[8],
                 int y[8]) {

#pragma scop
  for (int i = 0; i < 8; i++) {
    int tmp_reg = 0;
    int y_reg = 0;
    for (int j = 0; j < 8; j++) {
      int t1 = (A[i][j] * x[j]);
      int t2 = (B[i][j] * x[j]);
      tmp_reg += t1;
      y_reg += t2;
    }
    tmp[i] = tmp_reg;
    int y_i = y_reg;
    y[i] = ((alpha * tmp_reg) + (beta * y_i));
  }
#pragma endscop
}
