#define _PB_N 32
#define _PB_TSTEPS 2
#define DATATYPE float

DATATYPE add_f32(DATATYPE a, DATATYPE b);
DATATYPE mul_f32(DATATYPE a, DATATYPE b);

#pragma HLS extern_func variable = add_f32 latency = 5
#pragma HLS extern_func variable = mul_f32 latency = 4

void jacobi_2d_hir(float A[_PB_N][_PB_N], float B[_PB_N][_PB_N]) {
  int t, i, j;
#pragma HLS interface port = A storage_type = ram_2p rd_latency =              \
    1 wr_latency = 1
#pragma HLS interface port = B storage_type = ram_2p rd_latency =              \
    1 wr_latency = 1
#pragma scop
  for (t = 0; t < _PB_TSTEPS; t++) {
#pragma HLS pipeline II = 4600
    for (i = 1; i < _PB_N - 1; i++)
#pragma HLS pipeline II = 150
      for (j = 1; j < _PB_N - 1; j++) {
#pragma HLS pipeline II = 5
        B[i][j] = mul_f32((float)0.2,
                          add_f32(add_f32(add_f32(A[i][j], A[i][j - 1]),
                                          add_f32(A[i][1 + j], A[1 + i][j])),
                                  A[i - 1][j]));
      }
    for (i = 1; i < _PB_N - 1; i++)
#pragma HLS pipeline II = 36
      for (j = 1; j < _PB_N - 1; j++)
#pragma HLS pipeline II = 1
        A[i][j] = B[i][j];
  }
#pragma endscop
}