#define IMG_SIZE 32
float add_f32(float a, float b);
float sub_f32(float a, float b);
float mul_f32(float a, float b);
#pragma HLS extern_func variable = add_f32 latency = 5
#pragma HLS extern_func variable = sub_f32 latency = 5
#pragma HLS extern_func variable = mul_f32 latency = 4

void downsample(float out[IMG_SIZE / 2][IMG_SIZE / 2],
                float img[IMG_SIZE][IMG_SIZE]) {
  float temp[IMG_SIZE][IMG_SIZE / 2];
#pragma HLS bind_storage variable = temp type = ram_2p impl =                  \
    bram rd_latency = 1 wr_latency = 1
#pragma scop
  for (int i = 1; i < IMG_SIZE; i++) {
#pragma HLS pipeline II = 50
    for (int j = 1; j < IMG_SIZE / 2; j++) {
#pragma HLS pipeline II = 3
      temp[i][j] =
          (add_f32(img[i][2 * j - 1], mul_f32((float)2.0, img[i][2 * j])) +
           img[i][2 * j + 1]) *
          (float)0.25;
    }
  }

  for (int i = 1; i < IMG_SIZE / 2; i++) {
#pragma HLS pipeline II = 50
    for (int j = 1; j < IMG_SIZE / 2; j++) {
#pragma HLS pipeline II = 3
      out[i][j] = (temp[2 * i - 1][j] + (float)2.0 * temp[2 * i][j] +
                   temp[2 * i + 1][j]) *
                  (float)0.25;
    }
  }
#pragma endscop
}

void upsample(float out[IMG_SIZE][IMG_SIZE],
              float img[IMG_SIZE / 2][IMG_SIZE / 2]) {
  float temp[IMG_SIZE / 2][IMG_SIZE];
  float v;
#pragma HLS bind_storage variable = temp type = ram_2p impl =                  \
    bram rd_latency = 1 wr_latency = 1

#pragma scop
  for (int i = 1; i < IMG_SIZE / 2; i++) {
#pragma HLS pipeline II = 32
    for (int j = 1; j < IMG_SIZE / 2 - 1; j++) {
#pragma HLS pipeline II = 2
      v = img[i][j];
      temp[i][2 * j] = v;
      temp[i][2 * j + 1] = (v + img[i][j + 1]) * (float)0.5;
    }
  }

  for (int i = 1; i < IMG_SIZE / 2 - 1; i++) {
#pragma HLS pipeline II = 64
    for (int j = 1; j < IMG_SIZE; j++) {
#pragma HLS pipeline II = 2
      float v = temp[i][j];
      out[2 * i][j] = v;
      out[2 * i + 1][j] = (v + temp[i + 1][j]) * (float)0.5;
    }
  }
#pragma endscop
}

void dus_hir(float dus[IMG_SIZE][IMG_SIZE], float img[IMG_SIZE][IMG_SIZE]) {
#pragma HLS interface port = img storage_type = ram_1p rd_latency =            \
    1 wr_latency = 1
#pragma HLS interface port = dus storage_type = ram_1p rd_latency =            \
    1 wr_latency = 1

  float down[IMG_SIZE / 2][IMG_SIZE / 2];
#pragma HLS bind_storage variable = down type = ram_2p impl =                  \
    bram rd_latency = 1 wr_latency = 1

  downsample(down, img);
  upsample(dus, down);
}