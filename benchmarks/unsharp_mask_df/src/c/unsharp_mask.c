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

void split(DATATYPE output0[IMG_SIZE][IMG_SIZE],
           DATATYPE output1[IMG_SIZE][IMG_SIZE],
           DATATYPE input[IMG_SIZE][IMG_SIZE]) {
#pragma scop
  // latency=36*32=1152
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

  float acc = 0;
#pragma scop
  // latency=870*(32-5)=23490
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
  // latency=870*(32-5)=23490
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
  // latency=36*32=1152
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
  // latency=36*32=1152
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
  DATATYPE bluryData0[IMG_SIZE][IMG_SIZE];
  DATATYPE bluryData1[IMG_SIZE][IMG_SIZE];
  DATATYPE imgtemp[IMG_SIZE][IMG_SIZE];
  DATATYPE img0[IMG_SIZE][IMG_SIZE];
  DATATYPE img1[IMG_SIZE][IMG_SIZE];
  DATATYPE img2[IMG_SIZE][IMG_SIZE];
  DATATYPE sharpImgData[IMG_SIZE][IMG_SIZE];
#pragma HLS interface port = img storage_type = ram_1p rd_latency = 1
#pragma HLS interface port = mask_img storage_type = ram_1p wr_latency = 1
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

  // seq latency = 5*1152+2*23490 = 52740 cycles.
  split(imgtemp, img0, img);                             // 1152
  split(img2, img1, imgtemp);                            // 1152
  convX(blurxData, img0, kernelX);                       // 23490
  convY(bluryData, blurxData, kernelY);                  // 23490
  split(bluryData0, bluryData1, bluryData);              // 1152
  sharpen(sharpImgData, img1, bluryData0, 3);            // 1152
  mask(mask_img, img2, bluryData1, sharpImgData, 0.001); // 1152
}
