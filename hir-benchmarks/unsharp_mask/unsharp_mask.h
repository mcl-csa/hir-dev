#define IMG_SIZE 32
#define KERNEL_SIZE 5


void convX(float output[IMG_SIZE][IMG_SIZE], float img[IMG_SIZE][IMG_SIZE], float kernel[KERNEL_SIZE]);
void convY(float output[IMG_SIZE][IMG_SIZE], float img[IMG_SIZE][IMG_SIZE], float kernel[KERNEL_SIZE]);
void sharpen(float output[IMG_SIZE][IMG_SIZE], float img[IMG_SIZE][IMG_SIZE], float blury[IMG_SIZE][IMG_SIZE], float weight);
void mask(float output[IMG_SIZE][IMG_SIZE], float img[IMG_SIZE][IMG_SIZE], float blury[IMG_SIZE][IMG_SIZE],float sharp[IMG_SIZE][IMG_SIZE], float threshold);
void unsharp_mask(float img[IMG_SIZE][IMG_SIZE], float mask_img[IMG_SIZE][IMG_SIZE]);
