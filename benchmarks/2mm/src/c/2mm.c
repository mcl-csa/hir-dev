#define _PB_NI 32
#define _PB_NJ 32
#define _PB_NL 32
#define _PB_NK 32
#define DATA_TYPE float

DATA_TYPE add_f32(DATA_TYPE a, DATA_TYPE b);
DATA_TYPE mul_f32(DATA_TYPE a, DATA_TYPE b);

#pragma HLS extern_func variable = add_f32 latency = 5
#pragma HLS extern_func variable = mul_f32 latency = 4

void kernel_2mm_hir(DATA_TYPE alpha, DATA_TYPE beta,
                    DATA_TYPE tmp[_PB_NI][_PB_NJ], DATA_TYPE A[_PB_NI][_PB_NK],
                    DATA_TYPE B[_PB_NK][_PB_NJ], DATA_TYPE C[_PB_NJ][_PB_NL],
                    DATA_TYPE D[_PB_NI][_PB_NL]) {
  int i, j, k;

#pragma HLS interface port = tmp storage_type = ram_2p rd_latency =            \
    1 wr_latency = 1
#pragma HLS interface port = A storage_type = ram_1p rd_latency = 1
#pragma HLS interface port = B storage_type = ram_1p rd_latency = 1
#pragma HLS interface port = C storage_type = ram_1p rd_latency = 1
#pragma HLS interface port = D storage_type = ram_2p rd_latency =              \
    1 wr_latency = 1

#pragma scop
  /* D := alpha*A*B*C + beta*D */
  DATA_TYPE acc;
  for (i = 0; i < _PB_NI; i++)
#pragma HLS pipeline II = 32
    for (j = 0; j < _PB_NJ; j++)
#pragma HLS pipeline II = 1
      tmp[i][j] = 0;

  for (i = 0; i < _PB_NI; i++)
#pragma HLS pipeline II = 1024
    for (k = 0; k < _PB_NK; ++k)
#pragma HLS pipeline II = 32
      for (j = 0; j < _PB_NJ; j++)
#pragma HLS pipeline II = 1
        tmp[i][j] =
            add_f32(tmp[i][j], mul_f32(alpha, mul_f32(A[i][k], B[k][j])));

  for (i = 0; i < _PB_NI; i++)
#pragma HLS pipeline II = 128
    for (j = 0; j < _PB_NL; j++)
#pragma HLS pipeline II = 1
      D[i][j] = mul_f32(D[i][j], beta);

  for (i = 0; i < _PB_NI; i++)
#pragma HLS pipeline II = 1024
    for (k = 0; k < _PB_NJ; ++k)
#pragma HLS pipeline II = 32
      for (j = 0; j < _PB_NL; j++)
#pragma HLS pipeline II = 1
        D[i][j] = add_f32(D[i][j], mul_f32(tmp[i][k], C[k][j]));

#pragma endscop
}