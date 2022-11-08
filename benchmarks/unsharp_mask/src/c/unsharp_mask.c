#define IMG_SIZE 32
#define KERNEL_SIZE 5
#define KERNEL_SIZE_ROUNDED 8
#define DATATYPE float

DATATYPE select(char cmp, DATATYPE a, DATATYPE b);
DATATYPE add_f32(DATATYPE a, DATATYPE b);
DATATYPE sub_f32(DATATYPE a, DATATYPE b);
DATATYPE mul_f32(DATATYPE a, DATATYPE b);
char ugt_f32(DATATYPE a, DATATYPE b);

#pragma HLS extern_func variable = add_f32 latency = 7
#pragma HLS extern_func variable = sub_f32 latency = 7
#pragma HLS extern_func variable = mul_f32 latency = 4
#pragma HLS extern_func variable = ugt_f32 latency = 2

void split(DATATYPE output0[IMG_SIZE][IMG_SIZE],
           DATATYPE output1[IMG_SIZE][IMG_SIZE],
           DATATYPE input[IMG_SIZE][IMG_SIZE]) {
#pragma scop
  for (int i = 0; i < IMG_SIZE; i++) {
#pragma HLS pipeline II = 36
    for (int j = 0; j < IMG_SIZE; j++) {
#pragma HLS pipeline II = 1
      DATATYPE v = input[i][j];
      output0[i][j] = v;
      output1[i][j] = v;
    }
  }
#pragma endscop
}

void convX(DATATYPE output[IMG_SIZE][IMG_SIZE],
           DATATYPE img[IMG_SIZE][IMG_SIZE],
           DATATYPE kernel[KERNEL_SIZE_ROUNDED]) {

#pragma scop
  for (int i = 0; i < IMG_SIZE - KERNEL_SIZE; i++) {
#pragma HLS pipeline II = 1680
    for (int j = 0; j < IMG_SIZE - KERNEL_SIZE; j++) {
#pragma HLS pipeline II = 56
      output[i][j] = 0;
      for (int kk = 0; kk < KERNEL_SIZE; kk++) {
#pragma HLS pipeline II = 10
        output[i][j] =
            add_f32(output[i][j], mul_f32(kernel[kk], img[i][j + kk]));
      }
    }
  }
#pragma endscop
}

void convY(DATATYPE output[IMG_SIZE][IMG_SIZE],
           DATATYPE img[IMG_SIZE][IMG_SIZE],
           DATATYPE kernel[KERNEL_SIZE_ROUNDED]) {
#pragma scop
  for (int i = 0; i < IMG_SIZE - KERNEL_SIZE; i++) {
#pragma HLS pipeline II = 1680
    for (int j = 0; j < IMG_SIZE - KERNEL_SIZE; j++) {
#pragma HLS pipeline II = 56
      output[i][j] = 0;
      for (int kk = 0; kk < KERNEL_SIZE; kk++) {
#pragma HLS pipeline II = 10
        output[i][j] =
            add_f32(output[i][j], mul_f32(kernel[kk], img[i + kk][j]));
      }
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
      DATATYPE diff = sub_f32(img[i][j], blury[i][j]);
      int cmp1 = ugt_f32(diff, 0);
      DATATYPE abs = select(cmp1, diff, -diff);
      int cmp2 = ugt_f32(threshold, abs);
      output[i][j] = select(cmp2, img[i][j], sharp[i][j]);
    }
  }
#pragma endscop
}

void unsharpMask(DATATYPE img[IMG_SIZE][IMG_SIZE],
                 DATATYPE maskImg[IMG_SIZE][IMG_SIZE],
                 DATATYPE kernelX[KERNEL_SIZE_ROUNDED],
                 DATATYPE kernelY[KERNEL_SIZE_ROUNDED]) {

  DATATYPE blurxData[IMG_SIZE][IMG_SIZE];
  DATATYPE bluryData[IMG_SIZE][IMG_SIZE];
  DATATYPE bluryData0[IMG_SIZE][IMG_SIZE];
  DATATYPE bluryData1[IMG_SIZE][IMG_SIZE];
  DATATYPE imgtemp[IMG_SIZE][IMG_SIZE];
  DATATYPE img0[IMG_SIZE][IMG_SIZE];
  DATATYPE img1[IMG_SIZE][IMG_SIZE];
  DATATYPE img2[IMG_SIZE][IMG_SIZE];
  DATATYPE sharpImgData[IMG_SIZE][IMG_SIZE];
#pragma HLS interface port = img storage_type = ram_1p rd_latency = 1
#pragma HLS interface port = maskImg storage_type = ram_1p wr_latency = 1
#pragma HLS interface port = kernelX storage_type = ram_1p rd_latency = 1
#pragma HLS interface port = kernelY storage_type = ram_1p rd_latency = 1

#pragma HLS bind_storage variable = blurxData type = ram_2p impl =             \
    bram rd_latency = 1 wr_latency = 1
#pragma HLS bind_storage variable = bluryData type = ram_2p impl =             \
    bram rd_latency = 1 wr_latency = 1
#pragma HLS bind_storage variable = bluryData0 type = ram_2p impl =            \
    bram rd_latency = 1 wr_latency = 1
#pragma HLS bind_storage variable = bluryData1 type = ram_2p impl =            \
    bram rd_latency = 1 wr_latency = 1
#pragma HLS bind_storage variable = imgtemp type = ram_2p impl =               \
    bram rd_latency = 1 wr_latency = 1
#pragma HLS bind_storage variable = img0 type = ram_2p impl =                  \
    bram rd_latency = 1 wr_latency = 1
#pragma HLS bind_storage variable = img1 type = ram_2p impl =                  \
    bram rd_latency = 1 wr_latency = 1
#pragma HLS bind_storage variable = img2 type = ram_2p impl =                  \
    bram rd_latency = 1 wr_latency = 1
#pragma HLS bind_storage variable = sharpImgData type = ram_2p impl =          \
    bram rd_latency = 1 wr_latency = 1

  split(imgtemp, img0, img);
  split(img2, img1, imgtemp);
  convX(blurxData, img0, kernelX);
  convY(bluryData, blurxData, kernelY);
  split(bluryData0, bluryData1, bluryData);
  sharpen(sharpImgData, img1, bluryData0, 3);
  mask(maskImg, img2, bluryData1, sharpImgData, 0.001);
}