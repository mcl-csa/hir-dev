void stencil_1d(int A[64], int B[64], int w0, int w1) {
  int prev_v = A[0];
  for (int i = 1; i < 64; i++) {
#pragma HLS PIPELINE II=1
    int v = A[i];
    B[i] = w0 * prev_v + w1 * v;
    prev_v = v;
  }
}
