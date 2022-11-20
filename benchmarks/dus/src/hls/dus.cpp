#define IMG_SIZE 32
void downsample(float out[IMG_SIZE / 2][IMG_SIZE / 2],
                float img[IMG_SIZE][IMG_SIZE]) {
  float temp[IMG_SIZE][IMG_SIZE / 2];
  #pragma HLS bind_storage variable = temp type = ram_s2p impl = bram

  for (int i = 1; i < IMG_SIZE; i++) {
    for (int j = 1; j < IMG_SIZE / 2; j++) {
#pragma HLS pipeline
      temp[i][j] = (img[i][2 * j - 1] + 2 * img[i][2 * j] + img[i][2 * j + 1]) *
                   (float)0.25;
    }
  }

  for (int i = 1; i < IMG_SIZE / 2; i++) {
    for (int j = 1; j < IMG_SIZE / 2; j++) {
#pragma HLS pipeline
      out[i][j] = (temp[2 * i - 1][j] + (float)2.0 * temp[2 * i][j] +
                   temp[2 * i + 1][j]) *
                  (float)0.25;
    }
  }
}

void upsample(float out[IMG_SIZE][IMG_SIZE],
              float img[IMG_SIZE / 2][IMG_SIZE / 2]) {
  float temp[IMG_SIZE / 2][IMG_SIZE];
  float v;
  #pragma HLS bind_storage variable = temp type = ram_s2p impl = bram

  for (int i = 1; i < IMG_SIZE / 2; i++) {
    for (int j = 1; j < IMG_SIZE / 2 - 1; j++) {
#pragma HLS pipeline
      v = img[i][j];
      temp[i][2 * j] = v;
      temp[i][2 * j + 1] = v + img[i][j + 1] * (float)0.5;
    }
  }

  for (int i = 1; i < IMG_SIZE / 2 - 1; i++) {
    for (int j = 1; j < IMG_SIZE; j++) {
#pragma HLS pipeline
      out[2 * i][j] = temp[i][j];
      out[2 * i + 1][j] = (temp[i][j] + temp[i + 1][j]) * (float)0.5;
    }
  }
}

void dus_hls(float dus[IMG_SIZE][IMG_SIZE], float img[IMG_SIZE][IMG_SIZE]) {
  float down[IMG_SIZE / 2][IMG_SIZE / 2];
//#pragma HLS DATAFLOW
#pragma HLS INLINE recursive
#pragma HLS interface mode = ap_memory port = img storage_type = rom_1p
#pragma HLS interface mode = ap_memory port = dus storage_type = ram_1p
#pragma HLS bind_storage variable = down type = ram_2p impl = bram

  downsample(down, img);
  upsample(dus, down);
}
