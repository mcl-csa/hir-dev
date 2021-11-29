#include <ap_int.h>

void histogram_hls(ap_int<8> A[16][16], int B[256]) {
  int hist[256];
#pragma HLS RESOURCE variable=hist core=RAM_2P_LUTRAM

  for (int i = 0; i < 256; i++) {
    hist[i] = 0;
  }

  for (int i = 0; i < 16; i++) {
    for (int j = 0; j < 16; j++) {
#pragma HLS PIPELINE
      hist[A[i][j]]++;
    }
  }

  for (int i = 0; i < 256; i++) {
    B[i] = hist[i];
  }
}
