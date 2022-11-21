#define IMG_SIZE 32
#define KERNEL_SIZE 5
static float abs(float v) { return v > 0 ? v : -v; }

void split(float output0[IMG_SIZE][IMG_SIZE], float output1[IMG_SIZE][IMG_SIZE],
           float input[IMG_SIZE][IMG_SIZE]) {
#pragma HLS INLINE
  for (int i = 0; i < IMG_SIZE; i++) {
    for (int j = 0; j < IMG_SIZE; j++) {
#pragma HLS PIPELINE
      output0[i][j] = input[i][j];
      output1[i][j] = input[i][j];
    }
  }
}

void convX(float output[IMG_SIZE][IMG_SIZE], float img[IMG_SIZE][IMG_SIZE],
           float kernel[KERNEL_SIZE]) {
#pragma HLS INLINE
  for (int i = 0; i < IMG_SIZE - KERNEL_SIZE; i++) {
    for (int j = 0; j < IMG_SIZE - KERNEL_SIZE; j++) {
      output[i][j] = 0;
      for (int kk = 0; kk < KERNEL_SIZE; kk++) {
#pragma HLS PIPELINE
        output[i][j] += kernel[kk] * img[i][j + kk];
      }
    }
  }
}

void convY(float output[IMG_SIZE][IMG_SIZE], float img[IMG_SIZE][IMG_SIZE],
           float kernel[KERNEL_SIZE]) {
#pragma HLS INLINE
  for (int i = 0; i < IMG_SIZE - KERNEL_SIZE; i++) {
    for (int j = 0; j < IMG_SIZE - KERNEL_SIZE; j++) {
      output[i][j] = 0;
      for (int kk = 0; kk < KERNEL_SIZE; kk++) {
#pragma HLS PIPELINE
        output[i][j] += kernel[kk] * img[i + kk][j];
      }
    }
  }
}

void sharpen(float output[IMG_SIZE][IMG_SIZE], float img[IMG_SIZE][IMG_SIZE],
             float blury[IMG_SIZE][IMG_SIZE], float weight) {
#pragma HLS INLINE
  for (int i = 0; i < IMG_SIZE; i++) {
    for (int j = 0; j < IMG_SIZE; j++) {
#pragma HLS PIPELINE
      output[i][j] = (1 + weight) * img[i][j] - weight * blury[i][j];
    }
  }
}

void mask(float output[IMG_SIZE][IMG_SIZE], float img[IMG_SIZE][IMG_SIZE],
          float blury[IMG_SIZE][IMG_SIZE], float sharp[IMG_SIZE][IMG_SIZE],
          float threshold) {
#pragma HLS INLINE
  for (int i = 0; i < IMG_SIZE; i++) {
    for (int j = 0; j < IMG_SIZE; j++) {
#pragma HLS PIPELINE
      output[i][j] =
          (abs(img[i][j] - blury[i][j]) < threshold ? img[i][j] : sharp[i][j]);
    }
  }
}

void unsharp_mask_hls(float img[IMG_SIZE][IMG_SIZE],
                      float mask_img[IMG_SIZE][IMG_SIZE],
                      float kernelDataX[KERNEL_SIZE],
                      float kernelDataY[KERNEL_SIZE]) {

#pragma HLS DATAFLOW
#pragma HLS INLINE recursive
#pragma HLS INTERFACE mode = ap_memory port = img storage_type = rom_1p
#pragma HLS INTERFACE mode = ap_memory port = mask_img storage_type = ram_1p
#pragma HLS INTERFACE mode = ap_memory port = kernelDataX storage_type = rom_1p
#pragma HLS INTERFACE mode = ap_memory port = kernelDataY storage_type = rom_1p

#pragma HLS INTERFACE mode = ap_ctrl_none

  float blurxData[IMG_SIZE][IMG_SIZE];
  float bluryData[IMG_SIZE][IMG_SIZE];
  float bluryData0[IMG_SIZE][IMG_SIZE];
  float bluryData1[IMG_SIZE][IMG_SIZE];
#pragma HLS STREAM depth = 3 type = pipo variable = bluryData1

  float imgtemp[IMG_SIZE][IMG_SIZE];
  float img0[IMG_SIZE][IMG_SIZE];

  float img1[IMG_SIZE][IMG_SIZE];
#pragma HLS STREAM depth = 4 type = pipo variable = img1
  float img2[IMG_SIZE][IMG_SIZE];
#pragma HLS STREAM depth = 5 type = pipo variable = img2

  float sharpImgData[IMG_SIZE][IMG_SIZE];

  split(imgtemp, img0, img);
  split(img2, img1, imgtemp);
  convX(blurxData, img0, kernelDataX);
  convY(bluryData, blurxData, kernelDataY);
  split(bluryData0, bluryData1, bluryData);
  sharpen(sharpImgData, img1, bluryData0, 3);
  mask(mask_img, img2, bluryData1, sharpImgData, 0.001);
}
