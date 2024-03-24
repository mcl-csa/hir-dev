#define IMG_SIZE 32
#define KERNEL_SIZE 5
#define KERNEL_SIZE_ROUNDED 8
#define DATATYPE float

DATATYPE select_f32(char cmp, DATATYPE a, DATATYPE b);
DATATYPE add_f32(DATATYPE a, DATATYPE b);
DATATYPE sub_f32(DATATYPE a, DATATYPE b);
DATATYPE mul_f32(DATATYPE a, DATATYPE b);
char ugt_f32(DATATYPE a, DATATYPE b);

#pragma HLS extern_func variable = add_f32 latency = 5
#pragma HLS extern_func variable = sub_f32 latency = 5
#pragma HLS extern_func variable = mul_f32 latency = 4
#pragma HLS extern_func variable = ugt_f32 latency = 1

void convX(DATATYPE output[IMG_SIZE][IMG_SIZE],
           DATATYPE img[IMG_SIZE][IMG_SIZE],
           DATATYPE kernel[KERNEL_SIZE_ROUNDED]) {

  float acc = 0;
#pragma scop
  for (int i = 0; i < IMG_SIZE - KERNEL_SIZE; i++) {
#pragma HLS pipeline II = 870
    for (int j = 0; j < IMG_SIZE - KERNEL_SIZE; j++) {
#pragma HLS pipeline II = 32
      acc = 0;
      for (int kk = 0; kk < KERNEL_SIZE; kk++) {
#pragma HLS pipeline II = 6
        acc = add_f32(acc, mul_f32(kernel[kk], img[i][j + kk]));
      }
      output[i][j] = acc;
    }
  }
#pragma endscop
}

void convY(DATATYPE output[IMG_SIZE][IMG_SIZE],
           DATATYPE img[IMG_SIZE][IMG_SIZE],
           DATATYPE kernel[KERNEL_SIZE_ROUNDED]) {
  float acc = 0;
#pragma scop
  for (int i = 0; i < IMG_SIZE - KERNEL_SIZE; i++) {
#pragma HLS pipeline II = 870
    for (int j = 0; j < IMG_SIZE - KERNEL_SIZE; j++) {
#pragma HLS pipeline II = 32
      acc = 0;
      for (int kk = 0; kk < KERNEL_SIZE; kk++) {
#pragma HLS pipeline II = 6
        acc = add_f32(acc, mul_f32(kernel[kk], img[i + kk][j]));
      }
      output[i][j] = acc;
    }
  }
#pragma endscop
}

void sharpen(DATATYPE output[IMG_SIZE][IMG_SIZE],
             DATATYPE img[IMG_SIZE][IMG_SIZE],
             DATATYPE blury[IMG_SIZE][IMG_SIZE], DATATYPE weight) {
#pragma scop
  for (int i = 0; i < IMG_SIZE; i++) {
#pragma HLS pipeline II = 36
    for (int j = 0; j < IMG_SIZE; j++) {
#pragma HLS pipeline II = 1
      output[i][j] = sub_f32(mul_f32((1 + weight), img[i][j]),
                             mul_f32(weight, blury[i][j]));
    }
  }
#pragma endscop
}

void mask(DATATYPE output[IMG_SIZE][IMG_SIZE], DATATYPE img[IMG_SIZE][IMG_SIZE],
          DATATYPE blury[IMG_SIZE][IMG_SIZE],
          DATATYPE sharp[IMG_SIZE][IMG_SIZE], DATATYPE threshold) {
#pragma scop
  for (int i = 0; i < IMG_SIZE; i++) {
#pragma HLS pipeline II = 36
    for (int j = 0; j < IMG_SIZE; j++) {
#pragma HLS pipeline II = 1
      float v = img[i][j];
      DATATYPE diff = sub_f32(v, blury[i][j]);
      char cmp1 = ugt_f32(diff, 0);
      DATATYPE abs = select_f32(cmp1, diff, -diff);
      char cmp2 = ugt_f32(threshold, abs);
      output[i][j] = select_f32(cmp2, v, sharp[i][j]);
    }
  }
#pragma endscop
}

void unsharp_mask_hir(DATATYPE img[IMG_SIZE][IMG_SIZE],
                      DATATYPE mask_img[IMG_SIZE][IMG_SIZE],
                      DATATYPE kernelX[KERNEL_SIZE_ROUNDED],
                      DATATYPE kernelY[KERNEL_SIZE_ROUNDED]) {

  DATATYPE blurxData[IMG_SIZE][IMG_SIZE];
  DATATYPE bluryData[IMG_SIZE][IMG_SIZE];
  DATATYPE sharpImgData[IMG_SIZE][IMG_SIZE];
#pragma HLS interface port = img storage_type = ram_1p rd_latency = 1
#pragma HLS interface port = mask_img storage_type = ram_1p wr_latency = 1
#pragma HLS interface port = kernelX storage_type = ram_1p rd_latency = 1
#pragma HLS interface port = kernelY storage_type = ram_1p rd_latency = 1

#pragma HLS bind_storage variable = blurxData type = ram_2p impl =             \
    bram rd_latency = 1 wr_latency = 1
#pragma HLS bind_storage variable = bluryData type = ram_2p impl =             \
    bram rd_latency = 1 wr_latency = 1
#pragma HLS bind_storage variable = sharpImgData type = ram_2p impl =          \
    bram rd_latency = 1 wr_latency = 1

  convX(blurxData, img, kernelX);
  convY(bluryData, blurxData, kernelY);
  sharpen(sharpImgData, img, bluryData, 3);
  mask(mask_img, img, bluryData, sharpImgData, 0.001);
}
