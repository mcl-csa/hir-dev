#include "hls_stream.h"
#define HEIGHT 16
#define WIDTH 16
void convolution(hls::stream<int>& out_stream, hls::stream<int>& in_stream) {
  int line_buffer[3][WIDTH];
#pragma HLS ARRAY_PARTITION variable = line_buffer complete dim = 2
  int window[3][3];
#pragma HLS ARRAY_PARTITION variable = window complete

i_loop:
  for (int i = 0; i < HEIGHT; i++) {
  j_loop:
    for (int j = 0; j < WIDTH; j++) {
#pragma HLS PIPELINE II = 1
      int v[3];
      int input;

      for (int k = 2; k > 0; k--) {
#pragma HLS UNROLL
        line_buffer[k][j] = line_buffer[k - 1][j];
      }
      in_stream >> line_buffer[0][j];

      for (int k = 0; k < 3; k++) {
#pragma HLS UNROLL
        v[k] = line_buffer[k][j];
      }

      for (int k = 0; k < 3; k++) {
#pragma HLS UNROLL
        for (int l = 2; l > 0; l--) {
#pragma HLS UNROLL
          window[k][l] = window[k][l - 1];
        }
        window[k][0] = v[k];
      }
      int out0, out1, out2;
      out0 = window[0][0] / 16 + window[0][1] / 8 + window[0][2] / 16;
      out1 = window[1][0] / 8 + window[1][1] / 4 + window[1][2] / 8;
      out2 = window[2][0] / 16 + window[2][1] / 8 + window[2][2] / 16;
      out_stream << out0 + out1 + out2;
    }
  }
}
