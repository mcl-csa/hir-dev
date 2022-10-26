#define MAX_SIZE 4
#define IN_TYPE int
#define OUT_TYPE int

void matmul_hir(IN_TYPE Ai[MAX_SIZE][MAX_SIZE], IN_TYPE Bi[MAX_SIZE][MAX_SIZE],
                OUT_TYPE Co[MAX_SIZE][MAX_SIZE]) {

  IN_TYPE A[MAX_SIZE][MAX_SIZE];
  IN_TYPE Areg[MAX_SIZE + 1][MAX_SIZE];
  IN_TYPE Breg[MAX_SIZE][MAX_SIZE];
  OUT_TYPE C[MAX_SIZE][MAX_SIZE];
#pragma scop
  for (int i = 0; i < MAX_SIZE; i++) {
    for (int k = 0; k < MAX_SIZE; k++) {
      A[i][k] = Ai[i][k];
    }
  }

  for (int k = 0; k < MAX_SIZE; k++) {
    for (int j = 0; j < MAX_SIZE; j++) {
      Breg[k][j] = Bi[k][j];
    }
  }

  int result[MAX_SIZE + 1];
  for (int i = 0; i < MAX_SIZE; i++) {
    for (int k = 0; k < MAX_SIZE; k++) {
      Areg[0][k] = A[i][k];
    }
    for (int j = 0; j < MAX_SIZE; j++) {
      result[0] = 0;
      for (int k = 0; k < MAX_SIZE; k++) {
        result[k + 1] = result[k] + Areg[j][k] * Breg[k][j];
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
