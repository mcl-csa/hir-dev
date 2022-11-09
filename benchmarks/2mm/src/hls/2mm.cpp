#define _PB_NI 32
#define _PB_NJ 32
#define _PB_NL 32
#define _PB_NK 32
#define DATA_TYPE float

void kernel_2mm_hls(DATA_TYPE alpha, DATA_TYPE beta,
                    DATA_TYPE tmp[_PB_NI][_PB_NJ], DATA_TYPE A[_PB_NI][_PB_NK],
                    DATA_TYPE B[_PB_NK][_PB_NJ], DATA_TYPE C[_PB_NJ][_PB_NL],
                    DATA_TYPE D[_PB_NI][_PB_NL]) {
  int i, j, k;

  /* D := alpha*A*B*C + beta*D */
  DATA_TYPE acc;
  for (i = 0; i < _PB_NI; i++)
    for (j = 0; j < _PB_NJ; j++)
#pragma HLS pipeline II
      tmp[i][j] = 0;

  for (i = 0; i < _PB_NI; i++)
    for (k = 0; k < _PB_NK; ++k)
      for (j = 0; j < _PB_NJ; j++)
#pragma HLS pipeline II
        tmp[i][j] += alpha * A[i][k] * B[k][j];

  for (i = 0; i < _PB_NI; i++)
    for (j = 0; j < _PB_NL; j++)
#pragma HLS pipeline II
      D[i][j] *= beta;

  for (i = 0; i < _PB_NI; i++)
    for (k = 0; k < _PB_NJ; ++k)
      for (j = 0; j < _PB_NL; j++)
#pragma HLS pipeline II
        D[i][j] += tmp[i][k] * C[k][j];
}