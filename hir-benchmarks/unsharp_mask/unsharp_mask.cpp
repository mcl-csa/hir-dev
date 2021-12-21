// C++ program for the above approach
#include <iostream>
#include <opencv2/opencv.hpp>
using namespace cv;
using namespace std;

//helper functions.

Mat convX(Mat& image, Mat& kernel){
	Mat output;
	for(int i=0;i<image)
	return output;
}


// Driver code
int main(int argc, char** argv)
{
	float blur_kernel_values[5] = {1,1,1,1,1};
	// Read the image file as
	// imread("default.jpg");
	Mat image = imread("lenna.png",
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
	imshow("Window Name", image);

	Mat kernel = Mat(1,5,CV_32F,blur_kernel_values);
	Mat blurx = convX(image,kernel);

	// Wait for any keystroke
	waitKey(0);


	return 0;
}

