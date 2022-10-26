#define MAX_SIZE 4
#include <stdio.h>
void matmul(int Ai[MAX_SIZE][MAX_SIZE], int Bi[MAX_SIZE][MAX_SIZE],
    int Co[MAX_SIZE][MAX_SIZE]);

int main() {
  int A[MAX_SIZE][MAX_SIZE];
  int B[MAX_SIZE][MAX_SIZE];
  int C[MAX_SIZE][MAX_SIZE];

  for (int i = 0; i < MAX_SIZE; i++) {
    for (int j = 0; j < MAX_SIZE; j++) {
      A[i][j] = 1;
      B[i][j] = 1;
    }
  }
  matmul(A, B, C);

  for (int i = 0; i < MAX_SIZE; i++) {
    for (int j = 0; j < MAX_SIZE; j++) {
      printf("%d, ",C[i][j]);
    }
    printf("\n");
  }

}
