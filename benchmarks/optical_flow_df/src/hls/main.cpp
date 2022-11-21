#include "opencv2/core/cvdef.h"
#include <assert.h>
#include <cstdint>
#include <iostream>
#include <opencv2/opencv.hpp>
#include <opencv2/optflow.hpp>
#include <string>
#include <vector>
using namespace cv;
using namespace std;

#define C 635
#define R 355
template <typename Method, typename... Args>
void dense_optical_flow(string filename, Method method, Args &&...args) {
  // Read the video and first frame
  VideoCapture capture(samples::findFile(filename));
  if (!capture.isOpened()) {
    // error in opening the video input
    cerr << "Unable to open file!" << endl;
  }
  Mat frame1, prvs;
  capture >> frame1;
  cout << "image size = " << frame1.size;
  // Preprocessing for exact method
  cvtColor(frame1, prvs, COLOR_BGR2GRAY);

  while (true) {
    // Read the next frame
    Mat frame2, next;
    capture >> frame2;
    if (frame2.empty())
      break;

    // Preprocessing for exact method
    cvtColor(frame2, next, COLOR_BGR2GRAY);

    // Calculate Optical Flow
    Mat flow(prvs.size(), CV_32FC2);
    method(prvs, next, flow, std::forward<Args>(args)...);
    // Visualization part
    Mat flow_parts[2];
    split(flow, flow_parts);

    imshow("flow0", flow_parts[0]);
    // Convert the algorithm's output into Polar coordinates
    Mat magnitude, angle, magn_norm;
    // cartToPolar(flow_parts[0], flow_parts[1], magnitude, angle, true);
    // normalize(magnitude, magn_norm, 0.0f, 1.0f, NORM_MINMAX);
    // angle *= ((1.f / 360.f) * (180.f / 255.f));
    // Mat _hsv[3], hsv, hsv8, bgr;
    //_hsv[0] = angle;
    //_hsv[1] = Mat::ones(angle.size(), CV_32F);
    //_hsv[2] = magn_norm;
    // merge(_hsv, 3, hsv);
    // hsv.convertTo(hsv8, CV_8U, 255.0);

    // cvtColor(hsv8, bgr, COLOR_HSV2BGR);

    arrowedLine(frame2, Point(0, 0), Point(100, 200), Scalar(1, 100, 1), 1);

    for (int y = 1; y < R - 20; y++) {
      for (int x = 1; x < C - 20; x++) {
        auto dx = flow_parts[0].at<float>(y, x);
        auto dy = flow_parts[1].at<float>(y, x);
        auto abs = sqrt(dx * dx + dy * dy);
        if (abs > 0) {
          // dx = 2 * dx / abs;
          // dy = 2 * dy / abs;
          arrowedLine(frame2, Point(x, y), Point(x + 4 * dx, y + 4 * dy),
                      Scalar(1, 1, 100), 1);
        }
      }
    }
    imshow("frame", frame2);
    // imshow("flow", bgr);
    int keyboard = waitKey(300);
    if (keyboard == 'q' || keyboard == 27)
      break;

    // Update the previous frame
    prvs = next;
  }
}

void sum_kernel(Mat &i) {
  for (int r = 0; r < R - 5; r++) {
    for (int c = 0; c < C - 5; c++) {
      for (int rr = 0; rr < 5; rr++) {
        for (int cc = 0; cc < 5; cc++) {
          i.at<float>(r + 2, c + 2) += i.at<float>(r + rr, c + cc);
        }
      }
      i.at<float>(r, c) /= 25;
    }
  }
}

void funcIx(Mat &ix, Mat img) {
  float w[2][3];
  w[0][0] = -1 / 12.0;
  w[1][0] = 1 / 12.0;
  w[0][1] = -2 / 12.0;
  w[1][1] = 2 / 12.0;
  w[0][2] = -1 / 12.0;
  w[1][2] = 1 / 12.0;
  float acc;
  for (int y = 1; y < R - 1; y++) {
    for (int x = 1; x < C - 1; x++) {
      acc = 0;
      for (int u = 0; u < 2; u++) {
        for (int v = 0; v < 3; v++) {
          acc += img.at<cv::int8_t>(y + v - 1, x + 2 * u - 1) * w[u][v];
        }
      }
      ix.at<float>(y, x) = acc;
    }
  }
  sum_kernel(ix);
}

void funcIy(Mat &iy, Mat img) {
  float w[2][3];
  w[0][0] = -1 / 12.0;
  w[1][0] = 1 / 12.0;
  w[0][1] = -2 / 12.0;
  w[1][1] = 2 / 12.0;
  w[0][2] = -1 / 12.0;
  w[1][2] = 1 / 12.0;
  float acc;
  for (int r = 1; r < R - 1; r++) {
    for (int c = 1; c < C - 1; c++) {
      acc = 0;
      for (int u = 0; u < 2; u++) {
        for (int v = 0; v < 3; v++) {
          acc += img.at<cv::int8_t>(r + 2 * u - 1, c + v - 1) * w[u][v];
        }
      }
      iy.at<float>(r, c) = acc;
    }
  }
  sum_kernel(iy);
}

void funcIt(Mat &it, Mat current, Mat prev) {
  float w[3][3];
  w[0][0] = 1 / 16.0;
  w[1][0] = 1 / 8.0;
  w[2][0] = 1 / 16.0;
  w[0][1] = 1 / 8.0;
  w[1][1] = 1 / 4.0;
  w[2][1] = 1 / 8.0;
  w[0][2] = 1 / 16.0;
  w[1][2] = 1 / 8.0;
  w[2][2] = 1 / 16.0;
  float acc;
  for (int r = 1; r < R - 1; r++) {
    for (int c = 1; c < C - 1; c++) {
      acc = 0;
      for (int u = 0; u < 3; u++) {
        for (int v = 0; v < 3; v++) {
          acc += (current.at<cv::int8_t>(r + v - 1, c + u - 1) -
                  prev.at<cv::int8_t>(r + v - 1, c + u - 1)) *
                 w[u][v];
        }
      }
      it.at<float>(r, c) = acc;
    }
  }
  sum_kernel(it);
}

void gaussian(Mat &out, Mat img) {
  float w[3][3];
  w[0][0] = 1 / 16.0;
  w[1][0] = 1 / 8.0;
  w[2][0] = 1 / 16.0;
  w[0][1] = 1 / 8.0;
  w[1][1] = 1 / 4.0;
  w[2][1] = 1 / 8.0;
  w[0][2] = 1 / 16.0;
  w[1][2] = 1 / 8.0;
  w[2][2] = 1 / 16.0;
  float acc;
  for (int r = 1; r < R - 1; r++) {
    for (int c = 1; c < C - 1; c++) {
      acc = 0;
      for (int u = 0; u < 3; u++) {
        for (int v = 0; v < 3; v++) {
          acc += img.at<cv::int8_t>(r + v - 1, c + u - 1) * w[u][v];
        }
      }
      out.at<float>(r, c) = acc;
    }
  }
}
void funcIab(Mat &iab, Mat ia, Mat ib) {
  float v;
  for (int r = 1; r < R - 1; r++) {
    for (int c = 1; c < C - 1; c++) {
      iab.at<float>(r, c) = ia.at<float>(r, c) * ib.at<float>(r, c);
    }
  }
  sum_kernel(iab);
}
void funcDet(Mat &det, Mat ixx, Mat iyy, Mat ixy) {
  float v;
  for (int r = 1; r < R - 1; r++) {
    for (int c = 1; c < C - 1; c++) {
      v = ixy.at<float>(r, c);
      det.at<float>(r, c) = ixx.at<float>(r, c) * iyy.at<float>(r, c) - v * v;
    }
  }
}
void calcOpticalFlow(Mat from, Mat to, Mat &flow2, int grid_step = 8,
                     int k = 128, float sigma = 0.05f,
                     bool use_post_proc = true, float fgs_lambda = 500.0f,
                     float fgs_sigma = 1.5f

) {

  assert(from.rows > R);
  assert(from.cols > C);

  Mat Ix(from.size(), CV_32F);
  Mat fromSmooth(from.size(), CV_32F);
  Mat toSmooth(to.size(), CV_32F);
  Mat Iy(from.size(), CV_32F);
  Mat It(from.size(), CV_32F);
  Mat Ixx(from.size(), CV_32F), Iyy(from.size(), CV_32F),
      Ixy(from.size(), CV_32F), Ixt(from.size(), CV_32F),
      Iyt(from.size(), CV_32F);
  Mat det(from.size(), CV_32F);
  gaussian(fromSmooth, from);
  // gaussian(from, fromSmooth);
  // gaussian(fromSmooth, from);
  gaussian(toSmooth, to);
  /// gaussian(to, toSmooth);
  /// gaussian(toSmooth, to);
  funcIx(Ix, to);
  funcIy(Iy, to);
  funcIt(It, to, from);

  funcIab(Ixx, Ix, Ix);
  funcIab(Iyy, Iy, Iy);
  funcIab(Ixy, Ix, Iy);
  funcIab(Ixt, Ix, It);
  funcIab(Iyt, Iy, It);
  funcDet(det, Ixx, Iyy, Ixy);

  Mat flow(flow2.size(), CV_32F);
  for (int i = 0; i < R; i++) {
    for (int j = 0; j < C; j++) {
      float trace = (Ixx.at<float>(i, j) + Iyy.at<float>(i, j));
      if (det.at<float>(i, j) - 0.000 * trace * trace > 0) {
        flow2.at<Vec2f>(i, j)[0] =
            -(Iyy.at<float>(i, j) * Ixt.at<float>(i, j) -
              Ixy.at<float>(i, j) * Iyt.at<float>(i, j)) /
            det.at<float>(i, j); /**/
        flow2.at<Vec2f>(i, j)[1] =
            -(-Ixt.at<float>(i, j) * Ixy.at<float>(i, j) +
              Ixx.at<float>(i, j) * Iyt.at<float>(i, j)) /
            det.at<float>(i, j); /**/
      } else {
        flow2.at<Vec2f>(i, j)[0] = 0;
        flow2.at<Vec2f>(i, j)[1] = 0;
      }
    }
  }
  // gaussian(flow2, flow);
  // int n = 10;
  // for (int i = 0; i < R - n; i += n) {
  //  for (int j = 0; j < C - n; j += n) {
  //    float a = 0;
  //    float b = 0;
  //    for (int u = 0; u < n; u++) {
  //      for (int v = 0; v < n; v++) {
  //        float trace =
  //            (Ixx.at<float>(i + u, j + v) + Iyy.at<float>(i + u, j + v));
  //        if (det.at<float>(i + u, j + v) - 0.004 * trace * trace > (1e-5)) {
  //          a += flow2.at<Vec2f>(i + u, j + v)[0];
  //          b += flow2.at<Vec2f>(i + u, j + v)[1];
  //        }
  //        flow2.at<Vec2f>(i + u, j + v)[0] = 0;
  //        flow2.at<Vec2f>(i + u, j + v)[1] = 0;
  //      }
  //    }
  //    flow2.at<Vec2f>(i + n / 2, j + n / 2)[0] = a / (n * n);
  //    flow2.at<Vec2f>(i + n / 2, j + n / 2)[1] = b / (n * n);
  //  }
  //}
}

int main() {
  // dense_optical_flow("demo.mp4", optflow::calcOpticalFlowSparseToDense,
  // 8, 128,
  //                   0.05f, true, 500.0f, 1.5f);
  dense_optical_flow("traffic2.mp4", calcOpticalFlow, 8, 128, 0.05f, true,
                     500.0f, 1.5f);
  return 0;
}