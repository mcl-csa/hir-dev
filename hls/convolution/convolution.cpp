#include "hls_stream.h"
#define HEIGHT 16
#define WIDTH 16
#define K 2
void convolution(int img[HEIGHT][WIDTH], int kernel[K][K], int output[HEIGHT][WIDTH]) {
  for(int i=0;i<HEIGHT-K+1;i++){
    for(int j=0;j<WIDTH-K+1;j++){
      int val =0;
      for(int i1=0;i1<K;i1++){
        for(int j1=0;j1<K;j1++){
          val += img[i+i1][j+j1]*kernel[i1][j1];
        }
      }
      output[i][j]=val;
    }
  }
}
