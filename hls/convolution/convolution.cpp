#include "hls_stream.h"
#include "ap_int.h"
#define HEIGHT 8
#define WIDTH 8
#define K 2
void convolution_hls(int img[HEIGHT][WIDTH], int kernel[K][K], int output[HEIGHT][WIDTH]) {
//#pragma HLS INTERFACE ap_ctrl_none port=return
  for(ap_uint<3> i=0;i<HEIGHT-K+1;i++){
    for(ap_uint<3> j=0;j<WIDTH-K+1;j++){
      int val =0;
      for(ap_uint<3> i1=0;i1<K;i1++){
        for(ap_uint<3> j1=0;j1<K;j1++){
#pragma HLS PIPELINE
          val += img[i+i1][j+j1]*kernel[i1][j1];
        }
      }
      output[i][j]=val;
    }
  }
}
