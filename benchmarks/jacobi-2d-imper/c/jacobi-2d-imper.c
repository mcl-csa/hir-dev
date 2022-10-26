#define _PB_N 32
#define _PB_TSTEPS 2
void kernel_jacobi_2d_imper(int tsteps, int n, float A[_PB_N][_PB_N],
                            float B[_PB_N][_PB_N]) {
  int t, i, j;

#pragma scop
  for (t = 0; t < _PB_TSTEPS; t++) {
    for (i = 1; i < _PB_N - 1; i++)
      for (j = 1; j < _PB_N - 1; j++)
        B[i][j] = (float)0.2 * (A[i][j] + A[i][j - 1] + A[i][1 + j] +
                                A[1 + i][j] + A[i - 1][j]);
    for (i = 1; i < _PB_N - 1; i++)
      for (j = 1; j < _PB_N - 1; j++)
        A[i][j] = B[i][j];
  }
#pragma endscop
}