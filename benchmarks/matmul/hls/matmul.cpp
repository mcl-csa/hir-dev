#define MAX_SIZE 16
#define IN_TYPE int
#define OUT_TYPE int

void matmul(IN_TYPE Ai[MAX_SIZE * MAX_SIZE], // Read-Only Matrix 1
            IN_TYPE Bi[MAX_SIZE * MAX_SIZE], // Read-Only Matrix 2
            OUT_TYPE Co[MAX_SIZE * MAX_SIZE] // Output Result
            )                                // Matrix Dimension
{
  // Local memory is implemented as BRAM memory blocks
  IN_TYPE A[MAX_SIZE][MAX_SIZE];
  IN_TYPE B[MAX_SIZE][MAX_SIZE];
  OUT_TYPE C[MAX_SIZE][MAX_SIZE];
  //#pragma HLS RESOURCE variable=A core=RAM_2P_BRAM
  //#pragma HLS RESOURCE variable=B core=RAM_2P_BRAM
  //#pragma HLS RESOURCE variable=C core=RAM_T2P_BRAM
  // partitioning Array A and B
#pragma HLS ARRAY_PARTITION variable = A dim = 1 complete
#pragma HLS ARRAY_PARTITION variable = B dim = 1 complete
#pragma HLS ARRAY_PARTITION variable = B dim = 2 complete
#pragma HLS ARRAY_PARTITION variable = C dim = 2 complete

// Burst reads on input matrices from DDR memory
// Burst read for matrix A and B
// Multiple memory interfaces are supported by default in SDSoC
// It is possible to fetch both A and B concurrently.
readA:
  for (int itr = 0, i = 0, j = 0; itr < MAX_SIZE * MAX_SIZE; itr++, j++) {
#pragma HLS PIPELINE
    if (j == MAX_SIZE) {
      j = 0;
      i++;
    }
    A[i][j] = Ai[itr];
    B[i][j] = Bi[itr];
  }

  // By Default VHLS create single Memory with two ports for each local buffer
  // which allows maximum two read/write from buffer per clock.
  // Due to this restriction, lowest loop of mmmult can be unroll by 2 times
  // only.
  //
  // However Partition gives instruction to VHLS Complier to split a large array
  // into small-small memory which allow user to get multiple concurrent
  // accesses.
  //
  // To completely unroll the lowest loop of Mmult, A buffer is completely
  // partitioned for 2nd dimension, and B buffer is completely partitioned
  // for 1st dimension. Which eventually will improve the overall performance of
  // matrix multiplication.
  int result;
arraytemp1:
  for (int i = 0; i < MAX_SIZE; i++) {
#pragma HLS PIPELINE II = 1
  arraypart2:
    for (int j = 0; j < MAX_SIZE; j++) {
#pragma HLS UNROLL
      C[i][j] = 0;
    arraypart3:
      for (int k = 0; k < MAX_SIZE; k++) {
#pragma HLS UNROLL
        IN_TYPE a = A[i][k];
        IN_TYPE b = B[k][j];
        OUT_TYPE c = C[i][j];
        C[i][j] = c + a * b;
      }
      // C[i][j] =C[i][j]+ result;
    }
  }

// Burst write from output matrices to DDR memory
// Burst write from matrix C
writeC:
  for (int itr = 0, i = 0, j = 0; itr < MAX_SIZE * MAX_SIZE; itr++, j++) {
#pragma HLS PIPELINE
    if (j == MAX_SIZE) {
      j = 0;
      i++;
    }
    Co[itr] = C[i][j];
  }
}
