#define MAX_SIZE 4
#define IN_TYPE int
#define OUT_TYPE int
int mul_i32(int a, int b);
#pragma HLS extern_func variable = mul_i32 latency = 3

void matmul_hir(IN_TYPE Ai[MAX_SIZE][MAX_SIZE], IN_TYPE Bi[MAX_SIZE][MAX_SIZE],
                OUT_TYPE Co[MAX_SIZE][MAX_SIZE]) {

#pragma HLS interface port = Ai storage_type = ram_1p rd_latency = 1
#pragma HLS interface port = Bi storage_type = ram_1p rd_latency = 1
#pragma HLS interface port = Co storage_type = ram_1p wr_latency = 1

#pragma HLS bind_storage variable = A type = ram_2p impl = bram rd_latency =   \
    1 wr_latency = 1
#pragma HLS array_partition variable = A dim = 2

#pragma HLS bind_storage variable = Areg type = ram_2p impl =                  \
    AUTO rd_latency = 0 wr_latency = 1
#pragma HLS array_partition variable = Areg dim = 0
#pragma HLS bind_storage variable = Breg type = ram_2p impl =                  \
    AUTO rd_latency = 0 wr_latency = 1
#pragma HLS array_partition variable = Breg dim = 0
#pragma HLS bind_storage variable = C type = ram_2p impl = bram rd_latency =   \
    1 wr_latency = 1
#pragma HLS array_partition variable = C dim = 2
#pragma HLS bind_storage variable = result type = ram_2p impl =                \
    bram rd_latency = 1 wr_latency = 1

  IN_TYPE A[MAX_SIZE][MAX_SIZE];
  IN_TYPE Areg[MAX_SIZE + 1][MAX_SIZE];
  IN_TYPE Breg[MAX_SIZE][MAX_SIZE];
  OUT_TYPE C[MAX_SIZE][MAX_SIZE];
  int result[MAX_SIZE + 1];
#pragma scop
  for (int i = 0; i < MAX_SIZE; i++) {
    for (int k = 0; k < MAX_SIZE; k++) {
#pragma HLS PIPELINE II = 2
      A[i][k] = Ai[i][k];
    }
  }

  for (int k = 0; k < MAX_SIZE; k++) {
    for (int j = 0; j < MAX_SIZE; j++) {
#pragma HLS UNROLL factor = 0
      Breg[k][j] = Bi[k][j];
    }
  }

  for (int i = 0; i < MAX_SIZE; i++) {
    for (int k = 0; k < MAX_SIZE; k++) {
      Areg[0][k] = A[i][k];
    }
    for (int j = 0; j < MAX_SIZE; j++) {
      result[0] = 0;
      for (int k = 0; k < MAX_SIZE; k++) {
        result[k + 1] = result[k] + mul_i32(Areg[j][k], Breg[k][j]);
        Areg[j + 1][k] = Areg[j][k];
      }
      C[i][j] += result[MAX_SIZE];
    }
  }

  for (int i = 0; i < MAX_SIZE; i++) {
    for (int j = 0; j < MAX_SIZE; j++) {
      Co[i][j] = C[i][j];
    }
  }
#pragma endscop
}
