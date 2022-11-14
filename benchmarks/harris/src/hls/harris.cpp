#define R 32
#define C 32
#include <stdio.h>
void split(float output1[R][C], float output2[R][C], float input[R][C]) {
  for (int r = 0; r < R; r++) {
    for (int c = 0; c < C; c++) {
#pragma HLS pipeline
      float v = input[r][c];
      output1[r][c] = v;
      output2[r][c] = v;
      printf(" v=%0.3f\n", v);
    }
  }
}

void funcIx(float ix[R][C], float img[R][C]) {
  for (int r = 1; r < R - 1; r++) {
    for (int c = 1; c < C - 1; c++) {
#pragma HLS pipeline
      ix[r][c] = img[r - 1][c - 1] * (-1 / 12) + img[r + 1][c - 1] * (1 / 12) +
                 img[r - 1][c] * (-2 / 12) + img[r + 1][c] * (2 / 12) +
                 img[r - 1][c + 1] * (-1 / 12) + img[r + 1][c + 1] * (1 / 12);
    }
  }
}

void funcIy(float iy[R][C], float img[R][C]) {
  for (int r = 1; r < R - 1; r++) {
    for (int c = 1; c < C - 1; c++) {
#pragma HLS pipeline
      iy[r][c] = img[r - 1][c - 1] * (-1 / 12) + img[r - 1][c + 1] * (1 / 12) +
                 img[r][c - 1] * (-2 / 12) + img[r][c + 1] * (2 / 12) +
                 img[r + 1][c - 1] * (-1 / 12) + img[r + 1][c + 1] * (1 / 12);
    }
  }
}

void funcIxx(float ixx[R][C], float ix[R][C]) {
  float v;
  for (int r = 0; r < R; r++) {
    for (int c = 0; c < C; c++) {
#pragma HLS pipeline
      v = ix[r][c];
      ixx[r][c] = v * v;
    }
  }
}

void funcIyy(float iyy[R][C], float iy[R][C]) {
  float v;
  for (int r = 0; r < R; r++) {
    for (int c = 0; c < C; c++) {
#pragma HLS pipeline
      v = iy[r][c];
      iyy[r][c] = v * v;
    }
  }
}

void funcIxy(float ixy[R][C], float ix[R][C], float iy[R][C]) {
  for (int r = 0; r < R; r++) {
    for (int c = 0; c < C; c++) {
#pragma HLS pipeline
      ixy[r][c] = ix[r][c] * iy[r][c];
    }
  }
}

void funcS(float sxx[R][C], float ixx[R][C]) {
  for (int r = 1; r < R - 1; r++) {
    for (int c = 1; c < C - 1; c++) {
#pragma HLS pipeline
      sxx[r][c] = ixx[r - 1][c - 1] + ixx[r - 1][c] + ixx[r - 1][c + 1] +
                  ixx[r][c - 1] + ixx[r][c] + ixx[r][c + 1] +
                  ixx[r + 1][c - 1] + ixx[r + 1][c] + ixx[r + 1][c + 1];
    }
  }
}

void funcDet(float det[R][C], float sxx[R][C], float syy[R][C],
             float sxy[R][C]) {
  float v;
  for (int r = 0; r < R; r++) {
    for (int c = 0; c < C; c++) {
#pragma HLS pipeline
      v = sxy[r][c];
      det[r][c] = sxx[r][c] * syy[r][c] - v * v;
    }
  }
}

void funcTrace(float trace[R][C], float sxx[R][C], float syy[R][C]) {
  for (int r = 0; r < R; r++) {
    for (int c = 0; c < C; c++) {
#pragma HLS pipeline
      trace[r][c] = sxx[r][c] + syy[r][c];
    }
  }
}

void funcHarris(float harris[R][C], float det[R][C], float trace[R][C]) {
  float v;
  for (int r = 0; r < R; r++) {
    for (int c = 0; c < C; c++) {
#pragma HLS pipeline
      v = trace[r][c];
      harris[r][c] = det[r][c] - 0.04 * v * v;
    }
  }
}

void harris_hls(float harris[R][C], float img[R][C]) {
#pragma HLS INTERFACE mode = ap_memory port = img storage_type = ram_1p
#pragma HLS INTERFACE mode = ap_memory port = harris storage_type = ram_1p

  float img1[R][C];
#pragma HLS bind_storage variable = img1 impl = bram type = ram_s2p
  float img2[R][C];
#pragma HLS bind_storage variable = img2 impl = bram type = ram_s2p
  float ix[R][C];
#pragma HLS bind_storage variable = ix impl = bram type = ram_s2p
  float ix1[R][C];
#pragma HLS bind_storage variable = ix1 impl = bram type = ram_s2p
  float ix2[R][C];
#pragma HLS bind_storage variable = ix2 impl = bram type = ram_s2p
  float iy[R][C];
#pragma HLS bind_storage variable = iy impl = bram type = ram_s2p
  float iy1[R][C];
#pragma HLS bind_storage variable = iy1 impl = bram type = ram_s2p
  float iy2[R][C];
#pragma HLS bind_storage variable = iy2 impl = bram type = ram_s2p
  float ixx[R][C];
#pragma HLS bind_storage variable = ixx impl = bram type = ram_s2p
  float iyy[R][C];
#pragma HLS bind_storage variable = iyy impl = bram type = ram_s2p
  float ixy[R][C];
#pragma HLS bind_storage variable = ixy impl = bram type = ram_s2p
  float sxx[R][C];
#pragma HLS bind_storage variable = sxx impl = bram type = ram_s2p
  float sxx1[R][C];
#pragma HLS bind_storage variable = sxx1 impl = bram type = ram_s2p
  float sxx2[R][C];
#pragma HLS bind_storage variable = sxx2 impl = bram type = ram_s2p
  float syy[R][C];
#pragma HLS bind_storage variable = syy impl = bram type = ram_s2p
  float syy1[R][C];
#pragma HLS bind_storage variable = syy1 impl = bram type = ram_s2p
  float syy2[R][C];
#pragma HLS bind_storage variable = syy2 impl = bram type = ram_s2p
  float sxy[R][C];
#pragma HLS bind_storage variable = sxy impl = bram type = ram_s2p
  float det[R][C];
#pragma HLS bind_storage variable = det impl = bram type = ram_s2p
  float trace[R][C];
#pragma HLS bind_storage variable = trace impl = bram type = ram_s2p

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
