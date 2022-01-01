#include "unsharp_mask.h"

static float abs(float v){
	return v>0?v:-v;
}

inline void split (float output0[IMG_SIZE][IMG_SIZE], float output1[IMG_SIZE][IMG_SIZE], float input[IMG_SIZE][IMG_SIZE]){
	for(int i=0;i<IMG_SIZE;i++){
		for(int j=0;j<IMG_SIZE;j++){
			output0[i][j] = input[i][j];				
			output1[i][j] = input[i][j];				
		}
	}
}

inline void convX(float output[IMG_SIZE][IMG_SIZE], float img[IMG_SIZE][IMG_SIZE], float kernel[KERNEL_SIZE]){
	for(int i=0;i<IMG_SIZE-KERNEL_SIZE;i++){
#pragma HLS PIPELINE off
		for(int j=0;j<IMG_SIZE-KERNEL_SIZE;j++){
#pragma HLS PIPELINE off
			output[i][j] =0;
			for(int kk=0;kk<KERNEL_SIZE;kk++){
#pragma HLS PIPELINE off
				output[i][j]+=kernel[kk]*img[i][j+kk];
			}
		}
	}
}

inline void convY(float output[IMG_SIZE][IMG_SIZE], float img[IMG_SIZE][IMG_SIZE], float kernel[KERNEL_SIZE]){
	for(int i=0;i<IMG_SIZE-KERNEL_SIZE;i++){
#pragma HLS PIPELINE off
		for(int j=0;j<IMG_SIZE-KERNEL_SIZE;j++){
#pragma HLS PIPELINE off
			output[i][j] =0;
			for(int kk=0;kk<KERNEL_SIZE;kk++){
#pragma HLS PIPELINE off
					output[i][j]+=kernel[kk]*img[i+kk][j];
			}
		}
	}
}

inline void sharpen(float output[IMG_SIZE][IMG_SIZE], float img[IMG_SIZE][IMG_SIZE], float blury[IMG_SIZE][IMG_SIZE], float weight){
	for(int i=0;i<IMG_SIZE;i++){
		for(int j=0;j<IMG_SIZE;j++){
			 output[i][j] =  (1+weight)*img[i][j] - weight*blury[i][j];
		}
	}
}

inline void mask(float output[IMG_SIZE][IMG_SIZE], float img[IMG_SIZE][IMG_SIZE], float blury[IMG_SIZE][IMG_SIZE],float sharp[IMG_SIZE][IMG_SIZE], float threshold){
	for(int i=0;i<IMG_SIZE;i++){
		for(int j=0;j<IMG_SIZE;j++){
			 output[i][j] =  (abs(img[i][j]-blury[i][j])<threshold?img[i][j]:sharp[i][j]);
		}
	}
}

void unsharp_mask(float img[IMG_SIZE][IMG_SIZE], float mask_img[IMG_SIZE][IMG_SIZE]){
#pragma HLS INTERFACE mode=ap_ctrl_chain port=return
#pragma HLS DATAFLOW

float blurxData[IMG_SIZE][IMG_SIZE];
float bluryData[IMG_SIZE][IMG_SIZE];
float bluryData0[IMG_SIZE][IMG_SIZE];
float bluryData1[IMG_SIZE][IMG_SIZE];
#pragma HLS STREAM depth=3 type=pipo variable=bluryData1
float imgtemp[IMG_SIZE][IMG_SIZE];
float img0[IMG_SIZE][IMG_SIZE];

//Below pragma should not have worked because img0 is not read in same order as its writes,
//but vitis hls still implements img0 as a fifo (not pipo(ping-pong buffer)).
#pragma HLS STREAM depth=4 variable=img0
//#pragma HLS STREAM type=pipo variable=img0
float img1[IMG_SIZE][IMG_SIZE];
#pragma HLS STREAM depth=4 variable=img1
float img2[IMG_SIZE][IMG_SIZE];
//#pragma HLS STREAM depth=2048 variable=img2
float kernelData[KERNEL_SIZE] = {1/16.0, 4/16.0, 6/16.0, 4/16.0, 1/16.0};
float sharpImgData[IMG_SIZE][IMG_SIZE];

	split(imgtemp,img0,img);
	split(img2,img1,imgtemp);
	convX(blurxData,img0,kernelData);
	convY(bluryData,blurxData,kernelData);
	split(bluryData0,bluryData1,bluryData);
	sharpen(sharpImgData,img1,bluryData0,3);
	mask(mask_img,img2,bluryData1,sharpImgData,0.001);
}