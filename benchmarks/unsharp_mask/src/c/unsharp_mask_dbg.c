#include <stdio.h>
#define IMG_SIZE 32
#define KERNEL_SIZE 5

float select(int cmp, float a, float b);

void split(float output0[IMG_SIZE][IMG_SIZE], float output1[IMG_SIZE][IMG_SIZE],
           float input[IMG_SIZE][IMG_SIZE]) {
  printf("split\n");
#pragma scop
  for (int i = 0; i < IMG_SIZE; i++) {
    for (int j = 0; j < IMG_SIZE; j++) {
      float v = input[i][j];
      output0[i][j] = v;
      output1[i][j] = v;
    }
  }
#pragma endscop
}

void convX(float output[IMG_SIZE][IMG_SIZE], float img[IMG_SIZE][IMG_SIZE],
           float kernel[KERNEL_SIZE]) {

  printf("convX\n");
#pragma scop
  for (int i = 0; i < IMG_SIZE - KERNEL_SIZE; i++) {
    for (int j = 0; j < IMG_SIZE - KERNEL_SIZE; j++) {
      output[i][j] = 0;
      for (int kk = 0; kk < KERNEL_SIZE; kk++) {
        output[i][j] += kernel[kk] * img[i][j + kk];
      }
    }
  }
#pragma endscop
}

void convY(float output[IMG_SIZE][IMG_SIZE], float img[IMG_SIZE][IMG_SIZE],
           float kernel[KERNEL_SIZE]) {
  printf("convY\n");
#pragma scop
  for (int i = 0; i < IMG_SIZE - KERNEL_SIZE; i++) {
    for (int j = 0; j < IMG_SIZE - KERNEL_SIZE; j++) {
      output[i][j] = 0;
      for (int kk = 0; kk < KERNEL_SIZE; kk++) {
        output[i][j] += kernel[kk] * img[i + kk][j];
      }
    }
  }
#pragma endscop
}

void sharpen(float output[IMG_SIZE][IMG_SIZE], float img[IMG_SIZE][IMG_SIZE],
             float blury[IMG_SIZE][IMG_SIZE], float weight) {
  printf("sharpen\n");
#pragma scop
  for (int i = 0; i < IMG_SIZE; i++) {
    for (int j = 0; j < IMG_SIZE; j++) {
      output[i][j] = (1 + weight) * img[i][j] - weight * blury[i][j];
    }
  }
#pragma endscop
}

void mask(float output[IMG_SIZE][IMG_SIZE], float img[IMG_SIZE][IMG_SIZE],
          float blury[IMG_SIZE][IMG_SIZE], float sharp[IMG_SIZE][IMG_SIZE],
          float threshold) {
  printf("mask\n");
#pragma scop
  for (int i = 0; i < IMG_SIZE; i++) {
    for (int j = 0; j < IMG_SIZE; j++) {
      float diff = img[i][j] - blury[i][j];
      int cmp1 = (diff>0);
      float abs = select(cmp1 , diff , -diff);
      int cmp2 = abs < threshold;
      output[i][j] = select(cmp2, img[i][j], sharp[i][j]);
    }
  }
#pragma endscop
}

void unsharpMask(float img[IMG_SIZE][IMG_SIZE],
                 float maskImg[IMG_SIZE][IMG_SIZE],
                 float  kernelX[KERNEL_SIZE],float  kernelY[KERNEL_SIZE]) {
  printf("unsharpMask\n");
  float blurxData[IMG_SIZE][IMG_SIZE];
  float bluryData[IMG_SIZE][IMG_SIZE];
  float bluryData0[IMG_SIZE][IMG_SIZE];
  float bluryData1[IMG_SIZE][IMG_SIZE];
  float imgtemp[IMG_SIZE][IMG_SIZE];
  float img0[IMG_SIZE][IMG_SIZE];

  float img1[IMG_SIZE][IMG_SIZE];
  float img2[IMG_SIZE][IMG_SIZE];
  //float kernelData[KERNEL_SIZE] = {1 / 16.0, 4 / 16.0, 6 / 16.0, 4 / 16.0,
  //                                 1 / 16.0};
  float sharpImgData[IMG_SIZE][IMG_SIZE];

  split(imgtemp, img0, img);
  split(img2, img1, imgtemp);
  convX(blurxData, img0, kernelX);
  convY(bluryData, blurxData, kernelY);
  split(bluryData0, bluryData1, bluryData);
  sharpen(sharpImgData, img1, bluryData0, 3);
  mask(maskImg, img2, bluryData1, sharpImgData, 0.001);
  printf("unsharpMaskDone\n");
}

int main(){
  float img[IMG_SIZE][IMG_SIZE];
  float mask[IMG_SIZE][IMG_SIZE];
  float kernelX[KERNEL_SIZE];
  float kernelY[KERNEL_SIZE];
  for(int i=0;i<IMG_SIZE;i++)
    for(int j=0;j<IMG_SIZE;j++){
      img[i][j] = j;
    }
  for(int i=0;i<KERNEL_SIZE;i++){
      kernelX[i]=i;
      kernelY[i]=i;
    }
  unsharpMask(img,mask,kernelX,kernelY);
}
