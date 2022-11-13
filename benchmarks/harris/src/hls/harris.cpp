#define R 16
#define C 16

void funcIx(float ix[R][C], float img[R][C]) {
  for (int r = 0; r < R; r++) {
    for (int c = 0; c < C; c++) {
      ix[r][c] = img[r - 1][c - 1] * (-1 / 12) + img[r + 1][c - 1] * (1 / 12) +
                 img[r - 1][c] * (-2 / 12) + img[r + 1][c] * (2 / 12) +
                 img[r - 1][c + 1] * (-1 / 12) + img[r + 1][c + 1] * (1 / 12);
    }
  }
}

void funcIy(float iy[R][C], float img[R][C]) {
  for (int r = 0; r < R; r++) {
    for (int c = 0; c < C; c++) {
      iy[r][c] = img[r - 1][c - 1] * (-1 / 12) + img[r - 1][c + 1] * (1 / 12) +
                 img[r][c - 1] * (-2 / 12) + img[r][c + 1] * (2 / 12) +
                 img[r + 1][c - 1] * (-1 / 12) + img[r + 1][c + 1] * (1 / 12);
    }
  }
}
void funcIxx(float ixx[R][C], float ix[R][C]) {
  for (int r = 0; r < R; r++) {
    for (int c = 0; c < C; c++) {
      ixx[r][c] = ix[r][c] * ix[r][c];
    }
  }
}

void funcIyy(float iyy[R][C], float iy[R][C]) {
  for (int r = 0; r < R; r++) {
    for (int c = 0; c < C; c++) {
      iyy[r][c] = iy[r][c] * iy[r][c];
    }
  }
}
void funcIxy(float ixy[R][C], float ix[R][C], float iy[R][C]) {
  for (int r = 0; r < R; r++) {
    for (int c = 0; c < C; c++) {
      ixy[r][c] = ix[r][c] * iy[r][c];
    }
  }
}

void funcS__(float sxx[R][C], float ixx[R][C]) {

  for (int r = 0; r < R; r++) {
    for (int c = 0; c < C; c++) {
      sxx[r][c] = ixx[r - 1][c - 1] + ixx[r - 1][c] + ixx[r - 1][c + 1] +
                  ixx[r][c - 1] + ixx[r][c] + ixx[r][c + 1] +
                  ixx[r + 1][c - 1] + ixx[r + 1][c] + ixx[r + 1][c + 1];
    }
  }
}

void funcDet(float det[R][C], float sxx[R][C], float syy[R][C],
             float sxy[R][C]) {
  for (int r = 0; r < R; r++) {
    for (int c = 0; c < C; c++) {
      det[r][c] = sxx[r][c] * syy[r][c] - sxy[r][c] * sxy[r][c];
    }
  }
}

void funcTrace(float trace[R][C], float sxx[R][C], float syy[R][C]) {
  for (int r = 0; r < R; r++) {
    for (int c = 0; c < C; c++) {
      trace[r][c] = sxx[r][c] + syy[r][c];
    }
  }
}
void funcHarris(float harris[R][C], float det[R][C], float trace[R][C]) {
  for (int r = 0; r < R; r++) {
    for (int c = 0; c < C; c++) {
      harris[r][c] = det[r][c] - 0.04 * trace[r][c] * trace[r][c];
    }
  }
}

void harris_hls(float harris[R][C], float img[R][C]) {
#pragma HLS INTERFACE mode = ap_memory port = img storage_type = ram_s2p
#pragma HLS INTERFACE mode = ap_memory port = harris storage_type = ram_s2p
  float ix[R][C];
  float iy[R][C];
  float ixx[R][C];
  float iyy[R][C];
  float ixy[R][C];
  float sxx[R][C];
  float syy[R][C];
  float sxy[R][C];
  float det[R][C];
  float trace[R][C];

  funcIx(ix, img);
  funcIy(iy, img);
  funcIxx(ixx, ix);
  funcIyy(iyy, iy);
  funcIxy(ixy, ix, iy);
  funcS__(sxx, ixx);
  funcS__(syy, iyy);
  funcS__(sxy, ixy);
  funcDet(det, sxx, syy, sxy);
  funcTrace(trace, sxx, syy);
  funcHarris(harris, det, trace);
}