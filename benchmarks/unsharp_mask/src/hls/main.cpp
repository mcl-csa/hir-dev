#define IMG_SIZE 32
#define KERNEL_SIZE 5
void unsharp_mask_hls(float img[IMG_SIZE][IMG_SIZE],
                      float mask_img[IMG_SIZE][IMG_SIZE],
                      float kernelDataX[KERNEL_SIZE],
                      float kernelDataY[KERNEL_SIZE]);
int main() {
  float img[IMG_SIZE][IMG_SIZE];
  float mask_img[IMG_SIZE][IMG_SIZE];
  float kernel[KERNEL_SIZE];
  for (int i = 0; i < IMG_SIZE; i++) {
    for (int j = 0; j < IMG_SIZE; j++) {
      img[i][j] = 1;
    }
  }
  for (int i = 0; i < KERNEL_SIZE; i++) {
    kernel[i] = 1;
  }

  unsharp_mask_hls(img, mask_img, kernel, kernel);
  return 0;
}