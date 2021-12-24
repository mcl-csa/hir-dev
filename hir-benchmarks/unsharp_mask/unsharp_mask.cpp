// C++ program for the above approach
#include <iostream>
#include <opencv2/opencv.hpp>
using namespace cv;
using namespace std;

//helper functions.

void conv(Mat& output, Mat& img, Mat& kernel){
	for(int i=0;i<img.rows-kernel.rows;i++){
		for(int j=0;j<img.cols-kernel.cols;j++){
			output.at<float>(i,j) =0;
			for(int ii=0;ii<kernel.rows;ii++){
				for(int jj=0;jj<kernel.cols;jj++){
					output.at<float>(i,j)+=kernel.at<float>(ii,jj)*img.at<float>(i+ii,j+jj);
				 }
			}
		}
	}
}

void sharpen(Mat& output, Mat& img, Mat& blury, float weight){
	for(int i=0;i<img.rows;i++){
		for(int j=0;j<img.cols;j++){
			 output.at<float>(i,j) +=  (1+weight)*img.at<float>(i,j) - weight*blury.at<float>(i,j);
		}
	}
}

void mask(Mat& output, Mat& img, Mat& blury,Mat& sharp, float threshold){
	for(int i=0;i<img.rows;i++){
		for(int j=0;j<img.cols;j++){
			 output.at<float>(i,j) +=  (abs(img.at<float>(i,j)-blury.at<float>(i,j))<threshold?img.at<float>(i,j):sharp.at<float>(i,j));
		}
	}
}

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

	Mat kernelX = Mat(5,1,CV_32F,blur_kernel_values);
	Mat kernelY = Mat(1,5,CV_32F,blur_kernel_values);
	Mat blurx (img.rows,img.cols,CV_32F,0.0);
	Mat blury (img.rows,img.cols,CV_32F,0.0);
	Mat sharp_img (img.rows,img.cols,CV_32F,0.0);
	Mat mask_img (img.rows,img.cols,CV_32F,0.0);

	conv(blurx,img,kernelX);
	conv(blury,blurx,kernelY);
	sharpen(sharp_img,img,blury,3);
	mask(mask_img,img,blury,sharp_img,0.001);

	showFloatMat(mask_img);
	// Wait for any keystroke
	waitKey(0);

	return 0;
}
