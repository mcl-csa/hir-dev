#define R 32
#define C 32
//#include <stdio.h>
void split(float output1[R][C], float output2[R][C], float input[R][C]) {
  for (int r = 0; r < R; r++) {
    for (int c = 0; c < C; c++) {
#pragma HLS pipeline
      float v = input[r][c];
      output1[r][c] = v;
      output2[r][c] = v;
    }
  }
}

void funcIx(float ix[R][C], float img[R][C]) {
  float w[2][3];
  w[0][0] = -1 / 12.0;
  w[1][0] = 1 / 12.0;
  w[0][1] = -2 / 12.0;
  w[1][1] = 2 / 12.0;
  w[0][2] = -1 / 12.0;
  w[1][2] = 1 / 12.0;
  float acc;
  for (int r = 1; r < R - 1; r++) {
    for (int c = 1; c < C - 1; c++) {
      acc = 0;
      for (int u = 0; u < 2; u++) {
        for (int v = 0; v < 3; v++) {
#pragma HLS pipeline
          acc += img[r + 2 * u - 1][c + v - 1] * w[u][v];
        }
      }
      ix[r][c] = acc;
    }
  }
}

void funcIy(float iy[R][C], float img[R][C]) {
  float w[2][3];
  w[0][0] = -1 / 12.0;
  w[1][0] = 1 / 12.0;
  w[0][1] = -2 / 12.0;
  w[1][1] = 2 / 12.0;
  w[0][2] = -1 / 12.0;
  w[1][2] = 1 / 12.0;
  float acc;
  for (int r = 1; r < R - 1; r++) {
    for (int c = 1; c < C - 1; c++) {
      acc = 0;
      for (int u = 0; u < 2; u++) {
        for (int v = 0; v < 3; v++) {
#pragma HLS pipeline
          acc += img[r + v - 1][c + 2 * u - 1] * w[u][v];
        }
      }
      iy[r][c] = acc;
    }
  }
}

void funcIxx(float ixx[R][C], float ix[R][C]) {
  float v;
  for (int r = 1; r < R - 1; r++) {
    for (int c = 1; c < C - 1; c++) {
#pragma HLS pipeline
      v = ix[r][c];
      ixx[r][c] = v * v;
    }
  }
}

void funcIyy(float iyy[R][C], float iy[R][C]) {
  float v;
  for (int r = 1; r < R - 1; r++) {
    for (int c = 1; c < C - 1; c++) {
#pragma HLS pipeline
      v = iy[r][c];
      iyy[r][c] = v * v;
    }
  }
}

void funcIxy(float ixy[R][C], float ix[R][C], float iy[R][C]) {
  for (int r = 1; r < R - 1; r++) {
    for (int c = 1; c < C - 1; c++) {
#pragma HLS pipeline
      ixy[r][c] = ix[r][c] * iy[r][c];
    }
  }
}

void funcS(float sxx[R][C], float ixx[R][C]) {
  float acc;
  for (int r = 2; r < R - 2; r++) {
    for (int c = 2; c < C - 2; c++) {
      acc = 0;
      for (int u = 0; u < 3; u++) {
        for (int v = 0; v < 3; v++) {
#pragma HLS pipeline
          acc += ixx[r + u - 1][c + v - 1];
        }
      }
      sxx[r][c] = acc;
    }
  }
}

void funcDet(float det[R][C], float sxx[R][C], float syy[R][C],
             float sxy[R][C]) {
  float v;
  for (int r = 2; r < R - 2; r++) {
    for (int c = 2; c < C - 2; c++) {
#pragma HLS pipeline
      v = sxy[r][c];
      det[r][c] = sxx[r][c] * syy[r][c] - v * v;
    }
  }
}

void funcTrace(float trace[R][C], float sxx[R][C], float syy[R][C]) {
  for (int r = 2; r < R - 2; r++) {
    for (int c = 2; c < C - 2; c++) {
#pragma HLS pipeline
      trace[r][c] = sxx[r][c] + syy[r][c];
    }
  }
}

void funcHarris(float harris[R][C], float det[R][C], float trace[R][C]) {
  float v;
  for (int r = 2; r < R - 2; r++) {
    for (int c = 2; c < C - 2; c++) {
#pragma HLS pipeline
      v = trace[r][c];
      harris[r][c] = det[r][c] - (float)0.04 * v * v;
    }
  }
}

void harris_hls(float harris[R][C], float img[R][C]) {
//#pragma HLS DATAFLOW
#pragma HLS INLINE recursive
#pragma HLS INTERFACE mode = ap_memory port = img storage_type = ram_1p
#pragma HLS INTERFACE mode = ap_memory port = harris storage_type = ram_1p

  float img1[R][C];
  float img2[R][C];
  float ix[R][C];
  float ix1[R][C];
  float ix2[R][C];
  float iy[R][C];
  float iy1[R][C];
  float iy2[R][C];
  float ixx[R][C];
  float iyy[R][C];
  float ixy[R][C];
  float sxx[R][C];
  float sxx1[R][C];
  float sxx2[R][C];
  float syy[R][C];
  float syy1[R][C];
  float syy2[R][C];
  float sxy[R][C];
#pragma HLS STREAM depth = 3 type = pipo variable = sxy
  float det[R][C];
  float trace[R][C];

  split(img1, img2, img);
  funcIx(ix, img1);
  split(ix1, ix2, ix);
  funcIy(iy, img2);
  split(iy1, iy2, iy);
  funcIxx(ixx, ix1);
  funcIyy(iyy, iy1);
  funcIxy(ixy, ix2, iy2);
  funcS(sxx, ixx);
  split(sxx1, sxx2, sxx);
  funcS(syy, iyy);
  split(syy1, syy2, syy);
  funcS(sxy, ixy);
  funcDet(det, sxx1, syy1, sxy);
  funcTrace(trace, sxx2, syy2);
  funcHarris(harris, det, trace);
}
