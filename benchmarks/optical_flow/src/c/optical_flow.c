#define R 32
#define C 32
float add_f32(float a, float b);
float sub_f32(float a, float b);
float mul_f32(float a, float b);
float div_f32(float a, float b);
#pragma HLS extern_func variable = add_f32 latency = 5
#pragma HLS extern_func variable = sub_f32 latency = 5
#pragma HLS extern_func variable = mul_f32 latency = 4
#pragma HLS extern_func variable = div_f32 latency = 14

void funcIx(float ix[R][C], float img[R][C]) {
  float w[2][4];
#pragma HLS bind_storage variable = w impl = bram type = ram_2p rd_latency =   \
    1 wr_latency = 1
  float acc = 0;
#pragma scop
  w[0][0] = -1 / (float)12.0;
  w[1][0] = 1 / (float)12.0;
  w[0][1] = -2 / (float)12.0;
  w[1][1] = 2 / (float)12.0;
  w[0][2] = -1 / (float)12.0;
  w[1][2] = 1 / (float)12.0;
  for (int r = 1; r < R - 1; r++) {
#pragma HLS pipeline II = 1300
    for (int c = 1; c < C - 1; c++) {
#pragma HLS pipeline II = 40
      acc = 0;
      for (int u = 0; u < 2; u++) {
#pragma HLS pipeline II = 18
        for (int v = 0; v < 3; v++) {
#pragma HLS pipeline II = 6
          acc = add_f32(acc, mul_f32(img[r + 2 * u - 1][c + v - 1], w[u][v]));
        }
      }
      ix[r][c] = acc;
    }
  }

#pragma endscop
}

void funcIy(float iy[R][C], float img[R][C]) {
  float w[2][4];
#pragma HLS bind_storage variable = w impl = bram type = ram_2p rd_latency =   \
    1 wr_latency = 1
  float acc = 0;
#pragma scop
  w[0][0] = -1 / (float)12.0;
  w[1][0] = 1 / (float)12.0;
  w[0][1] = -2 / (float)12.0;
  w[1][1] = 2 / (float)12.0;
  w[0][2] = -1 / (float)12.0;
  w[1][2] = 1 / (float)12.0;
  for (int r = 1; r < R - 1; r++) {
#pragma HLS pipeline II = 1300
    for (int c = 1; c < C - 1; c++) {
#pragma HLS pipeline II = 40
      acc = 0;
      for (int u = 0; u < 2; u++) {
#pragma HLS pipeline II = 18
        for (int v = 0; v < 3; v++) {
#pragma HLS pipeline II = 6
          acc += img[r + v - 1][c + 2 * u - 1] * w[u][v];
        }
      }
      iy[r][c] = acc;
    }
  }
#pragma endscop
}

void funcIt(float it[R][C], float img[R][C], float prev[R][C]) {

#pragma scop
  for (int r = 1; r < R - 1; r++) {
#pragma HLS pipeline II = 36
    for (int c = 1; c < C - 1; c++) {
#pragma HLS pipeline II = 1
      it[r][c] = img[r][c] - prev[r][c];
    }
  }
#pragma endscop
}

void funcIaa(float iaa[R][C], float ia[R][C]) {
#pragma scop
  float v;
  for (int r = 1; r < R - 1; r++) {
#pragma HLS pipeline II = 36
    for (int c = 1; c < C - 1; c++) {
#pragma HLS pipeline II = 1
      v = ia[r][c];
      iaa[r][c] = v * v;
    }
  }
#pragma endscop
}

void funcIab(float iab[R][C], float ia[R][C], float ib[R][C]) {
#pragma scop
  for (int r = 1; r < R - 1; r++) {
#pragma HLS pipeline II = 36
    for (int c = 1; c < C - 1; c++) {
#pragma HLS pipeline II = 1
      iab[r][c] = ia[r][c] * ib[r][c];
    }
  }
#pragma endscop
}

void funcS(float sxx[R][C], float ixx[R][C]) {
#pragma scop
  float acc = 0;
  for (int r = 2; r < R - 2; r++) {
#pragma HLS pipeline II = 1800
    for (int c = 2; c < C - 2; c++) {
#pragma HLS pipeline II = 60
      acc = 0;
      for (int u = 0; u < 3; u++) {
#pragma HLS pipeline II = 20
        for (int v = 0; v < 3; v++) {
#pragma HLS pipeline II = 6
          acc = acc + ixx[r + u - 1][c + v - 1];
        }
      }
      sxx[r][c] = acc;
    }
  }
#pragma endscop
}

void funcDet(float det[R][C], float sxx[R][C], float syy[R][C],
             float sxy[R][C]) {
#pragma scop
  float v;
  for (int r = 2; r < R - 2; r++) {
#pragma HLS pipeline II = 36
    for (int c = 2; c < C - 2; c++) {
#pragma HLS pipeline II = 1
      v = sxy[r][c];
      det[r][c] = sub_f32(sxx[r][c] * syy[r][c], v * v) + (float)1e-05;
    }
  }
#pragma endscop
}

void funcFlowLK(float flow[R][C][2], float det[R][C], float sxx[R][C],
                float syy[R][C], float sxy[R][C], float sxt[R][C],
                float syt[R][C]) {
#pragma scop
  for (int r = 4; r < R - 4; r++) {
#pragma HLS pipeline II = 64
    for (int c = 4; c < C - 4; c++) {
#pragma HLS pipeline II = 2
      float _sxt = sxt[r][c];
      float _syt = syt[r][c];
      float d = div_f32((float)1.0, det[r][c]);
      flow[r][c][0] = d * (sxy[r][c] * _syt - syy[r][c] * _sxt);
      flow[r][c][1] = d * (sxx[r][c] * _syt - sxy[r][c] * _sxt);
    }
  }
#pragma endscop
}

void optical_flow_hir(float flow[R][C][2], float img[R][C], float prev[R][C]) {
#pragma HLS INTERFACE port = img storage_type = ram_1p rd_latency = 1
#pragma HLS INTERFACE port = prev storage_type = ram_1p rd_latency = 1
#pragma HLS INTERFACE port = flow storage_type = ram_1p wr_latency = 1

  float ix[R][C];
#pragma HLS bind_storage variable = ix impl = bram type = ram_2p rd_latency =  \
    1 wr_latency = 1
  float iy[R][C];
#pragma HLS bind_storage variable = iy impl = bram type = ram_2p rd_latency =  \
    1 wr_latency = 1
  float ixx[R][C];
#pragma HLS bind_storage variable = ixx impl = bram type = ram_2p rd_latency = \
    1 wr_latency = 1
  float iyy[R][C];
#pragma HLS bind_storage variable = iyy impl = bram type = ram_2p rd_latency = \
    1 wr_latency = 1
  float ixy[R][C];
#pragma HLS bind_storage variable = ixy impl = bram type = ram_2p rd_latency = \
    1 wr_latency = 1
  float sxx[R][C];
#pragma HLS bind_storage variable = sxx impl = bram type = ram_2p rd_latency = \
    1 wr_latency = 1
  float syy[R][C];
#pragma HLS bind_storage variable = syy impl = bram type = ram_2p rd_latency = \
    1 wr_latency = 1
  float sxy[R][C];
#pragma HLS bind_storage variable = sxy impl = bram type = ram_2p rd_latency = \
    1 wr_latency = 1
  float it[R][C];
#pragma HLS bind_storage variable = it impl = bram type = ram_2p rd_latency =  \
    1 wr_latency = 1
  float ixt[R][C];
#pragma HLS bind_storage variable = ixt impl = bram type = ram_2p rd_latency = \
    1 wr_latency = 1
  float iyt[R][C];
#pragma HLS bind_storage variable = iyt impl = bram type = ram_2p rd_latency = \
    1 wr_latency = 1
  float sxt[R][C];
#pragma HLS bind_storage variable = sxt impl = bram type = ram_2p rd_latency = \
    1 wr_latency = 1
  float syt[R][C];
#pragma HLS bind_storage variable = syt impl = bram type = ram_2p rd_latency = \
    1 wr_latency = 1
  float det[R][C];
#pragma HLS bind_storage variable = det impl = bram type = ram_2p rd_latency = \
    1 wr_latency = 1

  funcIx(ix, img);
  funcIy(iy, img);
  funcIaa(ixx, ix);
  funcIaa(iyy, iy);
  funcIab(ixy, ix, iy);
  funcS(sxx, ixx);
  funcS(syy, iyy);
  funcS(sxy, ixy);
  funcDet(det, sxx, syy, sxy);
  funcIt(it, img, prev);
  funcIab(ixt, ix, it);
  funcIab(iyt, iy, it);
  funcS(sxt, ixt);
  funcS(syt, iyt);
  funcFlowLK(flow, det, sxx, syy, sxy, sxt, syt);
}