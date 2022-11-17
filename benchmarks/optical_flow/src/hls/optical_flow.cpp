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

void funcIt(float it[R][C], float img[R][C], float prev[R][C]) {

  for (int r = 1; r < R - 1; r++) {
    for (int c = 1; c < C - 1; c++) {
      it[r][c] = img[r][c] - prev[r][c];
    }
  }
}

void funcIaa(float iaa[R][C], float ia[R][C]) {
  float v;
  for (int r = 1; r < R - 1; r++) {
    for (int c = 1; c < C - 1; c++) {
#pragma HLS pipeline
      v = ia[r][c];
      iaa[r][c] = v * v;
    }
  }
}

void funcIab(float iab[R][C], float ia[R][C], float ib[R][C]) {
  for (int r = 1; r < R - 1; r++) {
    for (int c = 1; c < C - 1; c++) {
#pragma HLS pipeline
      iab[r][c] = ia[r][c] * ib[r][c];
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
      det[r][c] = sxx[r][c] * syy[r][c] - v * v + 1e-05;
    }
  }
}

void funcFlowLK(float flow[R][C][2], float det[R][C], float sxx[R][C],
                float syy[R][C], float sxy[R][C], float sxt[R][C],
                float syt[R][C]) {
  for (int r = 4; r < R - 4; r++) {
    for (int c = 4; c < C - 4; c++) {
#pragma HLS pipeline
      float d = 1 / det[r][c];
      flow[r][c][0] = d * (sxy[r][c] * syt[r][c] - syy[r][c] * sxt[r][c]);
      flow[r][c][1] = d * (sxx[r][c] * syt[r][c] - sxy[r][c] * sxt[r][c]);
    }
  }
}

void optical_flow_hls_slow(float flow[R][C][2], float img[R][C],
                           float prev[R][C]) {
//#pragma HLS DATAFLOW
#pragma HLS INLINE recursive
#pragma HLS INTERFACE mode = ap_memory port = img storage_type = ram_1p
#pragma HLS INTERFACE mode = ap_memory port = prev storage_type = ram_1p
#pragma HLS INTERFACE mode = ap_memory port = flow storage_type = ram_1p

  float img1[R][C];
  float img2[R][C];
  float img3[R][C];
  float img4[R][C];
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
  float it[R][C];
  float ixt[R][C];
  float iyt[R][C];
  float sxt[R][C];
  float syt[R][C];
  float det[R][C];

  split(img1, img2, img);
  split(img3, img4, img2);
  funcIx(ix, img1);
  split(ix1, ix2, ix);
  funcIy(iy, img3);
  split(iy1, iy2, iy);
  funcIaa(ixx, ix1);
  funcIaa(iyy, iy1);
  funcIab(ixy, ix2, iy2);
  funcS(sxx, ixx);
  split(sxx1, sxx2, sxx);
  funcS(syy, iyy);
  split(syy1, syy2, syy);
  funcS(sxy, ixy);
  funcDet(det, sxx1, syy1, sxy);
  funcIt(it, img4, prev);
  funcIab(ixt, ix, it);
  funcIab(iyt, iy, it);
  funcS(sxt, ixt);
  funcS(syt, iyt);
  funcFlowLK(flow, det, sxx, syy, sxy, sxt, syt);
}

void optical_flow_hls(float flow[R][C][2], float img[R][C], float prev[R][C]) {
//#pragma HLS DATAFLOW
#pragma HLS INLINE recursive
#pragma HLS INTERFACE mode = ap_memory port = img storage_type = ram_1p
#pragma HLS INTERFACE mode = ap_memory port = prev storage_type = ram_1p
#pragma HLS INTERFACE mode = ap_memory port = flow storage_type = ram_1p

  float img1[R][C];
  float img2[R][C];
  float img3[R][C];
  float img4[R][C];
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
  float it[R][C];
  float ixt[R][C];
  float iyt[R][C];
  float sxt[R][C];
  float syt[R][C];
  float det[R][C];

  split(img1, img2, img);
  split(img3, img4, img2);
  funcIx(ix, img1);
  split(ix1, ix2, ix);
  funcIy(iy, img3);
  split(iy1, iy2, iy);
  funcIaa(ixx, ix1);
  funcIaa(iyy, iy1);
  funcIab(ixy, ix2, iy2);
  funcS(sxx, ixx);
  split(sxx1, sxx2, sxx);
  funcS(syy, iyy);
  split(syy1, syy2, syy);
  funcS(sxy, ixy);
  funcDet(det, sxx1, syy1, sxy);
  funcIt(it, img4, prev);
  funcIab(ixt, ix, it);
  funcIab(iyt, iy, it);
  funcS(sxt, ixt);
  funcS(syt, iyt);
  funcFlowLK(flow, det, sxx, syy, sxy, sxt, syt);
}
