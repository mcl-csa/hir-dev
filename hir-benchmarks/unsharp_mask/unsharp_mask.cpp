#include "unsharp_mask.h"

static float abs(float v){
	return v>0?v:-v;
}

void convX(float output[IMG_SIZE][IMG_SIZE], float img[IMG_SIZE][IMG_SIZE], float kernel[KERNEL_SIZE]){
	for(int i=0;i<IMG_SIZE-KERNEL_SIZE;i++){
		for(int j=0;j<IMG_SIZE-KERNEL_SIZE;j++){
			output[i][j] =0;
			for(int kk=0;kk<KERNEL_SIZE;kk++){
				output[i][j]+=kernel[kk]*img[i][j+kk];
			}
		}
	}
}

void convY(float output[IMG_SIZE][IMG_SIZE], float img[IMG_SIZE][IMG_SIZE], float kernel[KERNEL_SIZE]){
	for(int i=0;i<IMG_SIZE-KERNEL_SIZE;i++){
		for(int j=0;j<IMG_SIZE-KERNEL_SIZE;j++){
			output[i][j] =0;
			for(int kk=0;kk<KERNEL_SIZE;kk++){
					output[i][j]+=kernel[kk]*img[i+kk][j];
			}
		}
	}
}

void sharpen(float output[IMG_SIZE][IMG_SIZE], float img[IMG_SIZE][IMG_SIZE], float blury[IMG_SIZE][IMG_SIZE], float weight){
	for(int i=0;i<IMG_SIZE;i++){
		for(int j=0;j<IMG_SIZE;j++){
			 output[i][j] +=  (1+weight)*img[i][j] - weight*blury[i][j];
		}
	}
}

void mask(float output[IMG_SIZE][IMG_SIZE], float img[IMG_SIZE][IMG_SIZE], float blury[IMG_SIZE][IMG_SIZE],float sharp[IMG_SIZE][IMG_SIZE], float threshold){
	for(int i=0;i<IMG_SIZE;i++){
		for(int j=0;j<IMG_SIZE;j++){
			 output[i][j] +=  (abs(img[i][j]-blury[i][j])<threshold?img[i][j]:sharp[i][j]);
		}
	}
}

void unsharp_mask(float img[IMG_SIZE][IMG_SIZE], float mask_img[IMG_SIZE][IMG_SIZE]){

float blurxData[IMG_SIZE][IMG_SIZE];
float bluryData[IMG_SIZE][IMG_SIZE];
float kernelData[KERNEL_SIZE] = {1/16.0, 4/16.0, 6/16.0, 4/16.0, 1/16.0};
float sharpImgData[IMG_SIZE][IMG_SIZE];

	convX(blurxData,img,kernelData);
	convY(bluryData,blurxData,kernelData);
	sharpen(sharpImgData,img,bluryData,3);
	mask(mask_img,img,bluryData,sharpImgData,0.001);
}
