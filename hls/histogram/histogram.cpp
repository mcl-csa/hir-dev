#include <ap_int.h>
void histogram(ap_int<8> A[64][64], int B[256]) {
  int hist[256];
  for (int i = 0; i < 256; i++) {
    hist[i] = 0;
  }
  for (int i = 0; i < 16; i++) {
    histogram_label0:for (int j = 0; j < 16; j++) {
#pragma HLS PIPELINE

      hist[A[i][j]]++;
    }
  }
  for (int i = 0; i < 256; i++) {
    B[i] = hist[i];
  }
}
