#define _PB_NI 8
#define _PB_NJ 8
#define _PB_NL 8
#define _PB_NK 8
#define DATA_TYPE float

void kernel_2mm_hls(DATA_TYPE alpha, DATA_TYPE beta,
                    DATA_TYPE tmp[_PB_NI][_PB_NJ], DATA_TYPE A[_PB_NI][_PB_NK],
                    DATA_TYPE B[_PB_NK][_PB_NJ], DATA_TYPE C[_PB_NJ][_PB_NL],
                    DATA_TYPE D[_PB_NI][_PB_NL]) {
  // Dataflow can't handle read/write to external rams.
//#pragma HLS DATAFLOW
#pragma HLS INTERFACE mode = ap_memory port = A storage_type = rom_1p
#pragma HLS INTERFACE mode = ap_memory port = B storage_type = rom_1p
#pragma HLS INTERFACE mode = ap_memory port = C storage_type = rom_1p
#pragma HLS INTERFACE mode = ap_memory port = D storage_type = ram_s2p
#pragma HLS INTERFACE mode = ap_memory port = tmp storage_type = ram_s2p
  int i, j, k;

  /* D := alpha*A*B*C + beta*D */
  DATA_TYPE acc;
  for (i = 0; i < _PB_NI; i++)
    for (j = 0; j < _PB_NJ; j++) {
      acc = 0;
      for (k = 0; k < _PB_NK; ++k) {
#pragma HLS pipeline
        acc += alpha * A[i][k] * B[k][j];
      }
      tmp[i][j] = acc;
    }

  DATA_TYPE acc2;
  for (i = 0; i < _PB_NI; i++)
    for (j = 0; j < _PB_NL; j++) {
      acc2 = D[i][j] * beta;
      for (k = 0; k < _PB_NJ; ++k) {
#pragma HLS pipeline
        acc2 += tmp[i][k] * C[k][j];
      }
      D[i][j] = acc2;
    }
}
