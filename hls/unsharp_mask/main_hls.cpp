#include <iostream>
#include <fstream>
#include "unsharp_mask.h"
using namespace std;
int main(int argc, char** argv)
{
	ifstream imgFile("input.mem");
	ofstream maskFile("output.mem");

	float img[IMG_SIZE][IMG_SIZE];
	float mask_img[IMG_SIZE][IMG_SIZE];

	for(int i=0;i<IMG_SIZE;i++){
		for(int j=0;j<IMG_SIZE;j++){
			imgFile>>img[i][j]	;
		}
	}

	unsharp_mask(img,mask_img);

	for(int i=0;i<IMG_SIZE;i++){
		for(int j=0;j<IMG_SIZE;j++){
			maskFile<<mask_img[i][j];
			cout << mask_img[i][j]<<",\n";
		}
	}

	return 0;
}
