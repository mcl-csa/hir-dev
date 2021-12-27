#include "unsharp_mask.h"
#include <opencv2/opencv.hpp>
using namespace cv;
using namespace std;

void showFloatMat(Mat& img){
	Mat img2;
	img.convertTo(img2,CV_8U);
	imshow("Window Name", img2);
}

// Driver code
int main(int argc, char** argv)
{
	float blur_kernel_values[5] = {1/16.0, 4/16.0, 6/16.0, 4/16.0, 1/16.0};
	Mat image = imread("../lenna.png",
			IMREAD_GRAYSCALE);

	// Error Handling
	if (image.empty()) {
		cout << "Image File "
			<< "Not Found" << endl;

		// wait for any key press
		cin.get();
		return -1;
	}


	// Show Image inside a window with
	// the name provided

	Mat img;
	image.convertTo(img,CV_32F);

	Mat kernelX = Mat(KERNEL_SIZE,1,CV_32F,blur_kernel_values);
	Mat kernelY = Mat(1,KERNEL_SIZE,CV_32F,blur_kernel_values);
	Mat blurx (IMG_SIZE,IMG_SIZE,CV_32F,0.0);
	Mat blury (IMG_SIZE,IMG_SIZE,CV_32F,0.0);
	Mat sharp_img (IMG_SIZE,IMG_SIZE,CV_32F,0.0);
	Mat mask_img (IMG_SIZE,IMG_SIZE,CV_32F,0.0);

//float *blurxData=(float*)blurx.data;
//float *imgData=(float*)img.data;
//float *kernelXData=(float*)kernelX.data;
float imgData[IMG_SIZE][IMG_SIZE];
float blurxData[IMG_SIZE][IMG_SIZE];
float kernelData[KERNEL_SIZE];



float *bluryData=(float*)blury.data;
float *sharpImgData=(float*)sharp_img.data;
float *maskImgData=(float*)mask_img.data;

	convX(blurxData,imgData,kernelData);
	convY((float(*)[IMG_SIZE])bluryData,(float(*)[IMG_SIZE])blurxData,kernelData);
	sharpen((float(*)[IMG_SIZE])sharpImgData,(float(*)[IMG_SIZE])imgData,(float(*)[IMG_SIZE])bluryData,3);
	mask((float(*)[IMG_SIZE])maskImgData,(float(*)[IMG_SIZE])imgData,(float(*)[IMG_SIZE])bluryData,(float(*)[IMG_SIZE])sharpImgData,0.001);

	showFloatMat(mask_img);
	// Wait for any keystroke
	waitKey(0);

	return 0;
}
