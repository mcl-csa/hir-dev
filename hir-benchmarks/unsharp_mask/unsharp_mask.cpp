// C++ program for the above approach
#include <iostream>
#include <opencv2/opencv.hpp>
using namespace cv;
using namespace std;

//helper functions.

void convX(Mat& output, Mat& image, Mat& kernel){
	Mat img;

	image.convertTo(img,CV_32F);

	for(int i=0;i<img.rows-kernel.rows;i++){
		for(int j=0;j<img.cols-kernel.cols;j++){
			output.at<float>(i,j) =0;
			for(int ii=0;ii<kernel.rows;ii++){
				for(int jj=0;jj<kernel.rows;jj++){
					output.at<float>(i,j)+=kernel.at<float>(ii,jj)*img.at<float>(i+ii,j+jj);
				}
			}
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
	// Read the image file as
	// imread("default.jpg");
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

	Mat kernel = Mat(5,1,CV_32F,blur_kernel_values);
	Mat blurx (image.rows,image.cols,CV_32F,0.0);

	convX(blurx,image,kernel);
	showFloatMat(blurx);
	// Wait for any keystroke
	waitKey(0);


	return 0;
}

