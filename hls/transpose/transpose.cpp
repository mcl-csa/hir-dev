#include <ap_int.h>
void transpose(int A[16][16], int B[16][16]) {
  for (ap_int<5> i = 0; i < 16; i++) {
    for (ap_int<5> j = 0; j < 16; j++) {
#pragma HLS PIPELINE II = 1
      B[j][i] = A[i][j];
    }
  }
  return;
}
