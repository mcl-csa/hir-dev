#define R 16
#define C 16

float add_f32(float a, float b);
float sub_f32(float a, float b);
float mul_f32(float a, float b);

#pragma HLS extern_func variable = add_f32 latency = 5
#pragma HLS extern_func variable = sub_f32 latency = 5
#pragma HLS extern_func variable = mul_f32 latency = 4

void split(float output1[R][C], float output2[R][C], float input[R][C]) {
#pragma scop
  for (int r = 0; r < R; r++) {
#pragma HLS pipeline II = 16
    for (int c = 0; c < C; c++) {
#pragma HLS pipeline II = 1
      float v = input[r][c];
      output1[r][c] = v;
      output2[r][c] = v;
    }
  }
#pragma endscop
}
void funcIx(float ix[R][C], float img[R][C]) {
#pragma scop
  for (int r = 0; r < R; r++) {
#pragma HLS pipeline II = 100
    for (int c = 0; c < C; c++) {
#pragma HLS pipeline II = 6
      ix[r][c] = add_f32(add_f32(add_f32(mul_f32(img[r - 1][c - 1], (-1 / 12)),
                                         mul_f32(img[r + 1][c - 1], (1 / 12))),
                                 add_f32(mul_f32(img[r - 1][c], (-2 / 12)),
                                         mul_f32(img[r + 1][c], (2 / 12)))),
                         add_f32(mul_f32(img[r - 1][c + 1], (-1 / 12)),
                                 mul_f32(img[r + 1][c + 1], (1 / 12))));
    }
  }
#pragma endscop
}

void funcIy(float iy[R][C], float img[R][C]) {
#pragma scop
  for (int r = 0; r < R; r++) {
#pragma HLS pipeline II = 100
    for (int c = 0; c < C; c++) {
#pragma HLS pipeline II = 6
      iy[r][c] = add_f32(add_f32(add_f32(mul_f32(img[r - 1][c - 1], (-1 / 12)),
                                         mul_f32(img[r - 1][c + 1], (1 / 12))),
                                 add_f32(mul_f32(img[r][c - 1], (-2 / 12)),
                                         mul_f32(img[r][c + 1], (2 / 12)))),
                         add_f32(mul_f32(img[r + 1][c - 1], (-1 / 12)),
                                 mul_f32(img[r + 1][c + 1], (1 / 12))));
    }
  }
#pragma endscop
}
void funcIxx(float ixx[R][C], float ix[R][C]) {
#pragma scop
  float v;
  for (int r = 0; r < R; r++) {
#pragma HLS pipeline II = 16
    for (int c = 0; c < C; c++) {
#pragma HLS pipeline II = 1
      v = ix[r][c];
      ixx[r][c] = mul_f32(v, v);
    }
  }
#pragma endscop
}

void funcIyy(float iyy[R][C], float iy[R][C]) {
#pragma scop
  float v;
  for (int r = 0; r < R; r++) {
#pragma HLS pipeline II = 16
    for (int c = 0; c < C; c++) {
#pragma HLS pipeline II = 1
      v = iy[r][c];
      iyy[r][c] = mul_f32(v, v);
    }
  }
#pragma endscop
}

void funcIxy(float ixy[R][C], float ix[R][C], float iy[R][C]) {
#pragma scop
  for (int r = 0; r < R; r++) {
#pragma HLS pipeline II = 16
    for (int c = 0; c < C; c++) {
#pragma HLS pipeline II = 1
      ixy[r][c] = mul_f32(ix[r][c], iy[r][c]);
    }
  }
#pragma endscop
}

void funcS(float sxx[R][C], float ixx[R][C]) {
#pragma scop
  for (int r = 0; r < R; r++) {
#pragma HLS pipeline II = 160
    for (int c = 0; c < C; c++) {
#pragma HLS pipeline II = 9
      sxx[r][c] =
          add_f32(add_f32(add_f32(add_f32(ixx[r - 1][c - 1], ixx[r - 1][c]),
                                  add_f32(ixx[r - 1][c + 1], ixx[r][c - 1])),
                          add_f32(add_f32(ixx[r][c], ixx[r][c + 1]),
                                  add_f32(ixx[r + 1][c - 1], ixx[r + 1][c]))),
                  ixx[r + 1][c + 1]);
    }
  }
#pragma endscop
}

void funcDet(float det[R][C], float sxx[R][C], float syy[R][C],
             float sxy[R][C]) {
#pragma scop
  float v;
  for (int r = 0; r < R; r++) {
#pragma HLS pipeline II = 16
    for (int c = 0; c < C; c++) {
#pragma HLS pipeline II = 1
      v = sxy[r][c];
      det[r][c] = sub_f32(mul_f32(sxx[r][c], syy[r][c]), mul_f32(v, v));
    }
  }
#pragma endscop
}

void funcTrace(float trace[R][C], float sxx[R][C], float syy[R][C]) {
#pragma scop
  for (int r = 0; r < R; r++) {
#pragma HLS pipeline II = 16
    for (int c = 0; c < C; c++) {
#pragma HLS pipeline II = 1
      trace[r][c] = add_f32(sxx[r][c], syy[r][c]);
    }
  }
#pragma endscop
}
void funcHarris(float harris[R][C], float det[R][C], float trace[R][C]) {
#pragma scop
  float v;
  for (int r = 0; r < R; r++) {
#pragma HLS pipeline II = 16
    for (int c = 0; c < C; c++) {
#pragma HLS pipeline II = 1
      v = trace[r][c];
      harris[r][c] = sub_f32(det[r][c], mul_f32(0.04, mul_f32(v, v)));
    }
  }
#pragma endscop
}

void harris_hir(float harris[R][C], float img[R][C]) {
#pragma HLS INTERFACE port = img storage_type = ram_1p rd_latency = 1
#pragma HLS INTERFACE port = harris storage_type = ram_1p wr_latency = 1

  float img1[R][C];
#pragma HLS bind_storage variable = img1 impl = bram type =                    \
    ram_2p rd_latency = 1 wr_latency = 1
  float img2[R][C];
#pragma HLS bind_storage variable = img2 impl = bram type =                    \
    ram_2p rd_latency = 1 wr_latency = 1
  float ix[R][C];
#pragma HLS bind_storage variable = ix impl = bram type = ram_2p rd_latency =  \
    1 wr_latency = 1
  float ix1[R][C];
#pragma HLS bind_storage variable = ix1 impl = bram type = ram_2p rd_latency = \
    1 wr_latency = 1
  float ix2[R][C];
#pragma HLS bind_storage variable = ix2 impl = bram type = ram_2p rd_latency = \
    1 wr_latency = 1
  float iy[R][C];
#pragma HLS bind_storage variable = iy impl = bram type = ram_2p rd_latency =  \
    1 wr_latency = 1
  float iy1[R][C];
#pragma HLS bind_storage variable = iy1 impl = bram type = ram_2p rd_latency = \
    1 wr_latency = 1
  float iy2[R][C];
#pragma HLS bind_storage variable = iy2 impl = bram type = ram_2p rd_latency = \
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
  float sxx1[R][C];
#pragma HLS bind_storage variable = sxx1 impl = bram type =                    \
    ram_2p rd_latency = 1 wr_latency = 1
  float sxx2[R][C];
#pragma HLS bind_storage variable = sxx2 impl = bram type =                    \
    ram_2p rd_latency = 1 wr_latency = 1
  float syy[R][C];
#pragma HLS bind_storage variable = syy impl = bram type = ram_2p rd_latency = \
    1 wr_latency = 1
  float syy1[R][C];
#pragma HLS bind_storage variable = syy1 impl = bram type =                    \
    ram_2p rd_latency = 1 wr_latency = 1
  float syy2[R][C];
#pragma HLS bind_storage variable = syy2 impl = bram type =                    \
    ram_2p rd_latency = 1 wr_latency = 1
  float sxy[R][C];
#pragma HLS bind_storage variable = sxy impl = bram type = ram_2p rd_latency = \
    1 wr_latency = 1
  float det[R][C];
#pragma HLS bind_storage variable = det impl = bram type = ram_2p rd_latency = \
    1 wr_latency = 1
  float trace[R][C];
#pragma HLS bind_storage variable = trace impl = bram type =                   \
    ram_2p rd_latency = 1 wr_latency = 1

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