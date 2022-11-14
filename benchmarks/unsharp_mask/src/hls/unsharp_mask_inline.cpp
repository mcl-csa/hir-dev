#define IMG_SIZE 32
#define KERNEL_SIZE 5
static float abs(float v) { return v > 0 ? v : -v; }
void unsharp_mask_hls(float img[IMG_SIZE][IMG_SIZE],
                      float mask_img[IMG_SIZE][IMG_SIZE],
                      float kernelDataX[KERNEL_SIZE],
                      float kernelDataY[KERNEL_SIZE]) {

//#pragma HLS INLINE recursive
#pragma HLS INTERFACE mode = ap_memory port = img storage_type = rom_1p
#pragma HLS INTERFACE mode = ap_memory port = mask_img storage_type = ram_1p
#pragma HLS INTERFACE mode = ap_memory port = kernelDataX storage_type = rom_1p
#pragma HLS INTERFACE mode = ap_memory port = kernelDataY storage_type = rom_1p

#pragma HLS DATAFLOW
#pragma HLS INTERFACE mode = ap_ctrl_none

  float blurxData[IMG_SIZE][IMG_SIZE];
  float bluryData[IMG_SIZE][IMG_SIZE];
  float bluryData0[IMG_SIZE][IMG_SIZE];
  float bluryData1[IMG_SIZE][IMG_SIZE];
//#pragma HLS STREAM depth = 4 type = pipo variable = bluryData1

  float imgtemp[IMG_SIZE][IMG_SIZE];
  float img0[IMG_SIZE][IMG_SIZE];

  float img1[IMG_SIZE][IMG_SIZE];
//#pragma HLS STREAM depth = 4 type = pipo variable = img1
  float img2[IMG_SIZE][IMG_SIZE];
//#pragma HLS STREAM depth = 5 type = pipo variable = img2

  float sharpImgData[IMG_SIZE][IMG_SIZE];

  for (int i = 0; i < IMG_SIZE; i++) {
    for (int j = 0; j < IMG_SIZE; j++) {
#pragma HLS PIPELINE
      imgtemp[i][j] = img[i][j];
      img0[i][j] = img[i][j];
    }
  }
  for (int i = 0; i < IMG_SIZE; i++) {
    for (int j = 0; j < IMG_SIZE; j++) {
#pragma HLS PIPELINE
      img1[i][j] = imgtemp[i][j];
      img2[i][j] = imgtemp[i][j];
    }
  }
  for (int i = 0; i < IMG_SIZE - KERNEL_SIZE; i++) {

    for (int j = 0; j < IMG_SIZE - KERNEL_SIZE; j++) {

      blurxData[i][j] = 0;
      for (int kk = 0; kk < KERNEL_SIZE; kk++) {
#pragma HLS PIPELINE
        blurxData[i][j] += kernelDataX[kk] * img0[i][j + kk];
      }
    }
  }
  for (int i = 0; i < IMG_SIZE - KERNEL_SIZE; i++) {

    for (int j = 0; j < IMG_SIZE - KERNEL_SIZE; j++) {

      bluryData[i][j] = 0;
      for (int kk = 0; kk < KERNEL_SIZE; kk++) {
#pragma HLS PIPELINE
        bluryData[i][j] += kernelDataY[kk] * blurxData[i + kk][j];
      }
    }
  }
  for (int i = 0; i < IMG_SIZE; i++) {
    for (int j = 0; j < IMG_SIZE; j++) {
#pragma HLS PIPELINE
      bluryData0[i][j] = bluryData[i][j];
      bluryData1[i][j] = bluryData[i][j];
    }
  }
  for (int i = 0; i < IMG_SIZE; i++) {
    for (int j = 0; j < IMG_SIZE; j++) {
#pragma HLS PIPELINE
      sharpImgData[i][j] = (1 + 3) * img1[i][j] - 3 * bluryData0[i][j];
    }
  }
  for (int i = 0; i < IMG_SIZE; i++) {
    for (int j = 0; j < IMG_SIZE; j++) {
#pragma HLS PIPELINE
      mask_img[i][j] =
          (abs(img2[i][j] - bluryData1[i][j]) < 0.001 ? img2[i][j]
                                                      : sharpImgData[i][j]);
    }
  }
}
