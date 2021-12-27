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

	Mat blurx (IMG_SIZE,IMG_SIZE,CV_32F,0.0);
	Mat blury (IMG_SIZE,IMG_SIZE,CV_32F,0.0);
	Mat sharp_img (IMG_SIZE,IMG_SIZE,CV_32F,0.0);
	Mat mask_img (IMG_SIZE,IMG_SIZE,CV_32F,0.0);

float *imgData=(float*)img.data;
float *maskImgData=(float*)mask_img.data;

float blurxData[IMG_SIZE][IMG_SIZE];
float bluryData[IMG_SIZE][IMG_SIZE];
float kernelData[KERNEL_SIZE];
float sharpImgData[IMG_SIZE][IMG_SIZE];
unsharp_mask((float(*)[IMG_SIZE])imgData,(float(*)[IMG_SIZE])maskImgData);
showFloatMat(mask_img);
	// Wait for any keystroke
	waitKey(0);

	return 0;
}
