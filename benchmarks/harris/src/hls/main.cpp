#define R 32
#define C 32
#include <assert.h>
#include <fstream>
#include <stdio.h>
#include <string>
#include <vector>

void harris_hls(float harris[R][C], float img[R][C]);

int main() {
  // Open the File
  std::ifstream in(
      "/home/kingshuk/Git_Clones/hir-dev/benchmarks/harris/testbench/img.txt");
  std::string str;
  // Read the next line from File untill it reaches the end.
  std::vector<float> mem;
  while (std::getline(in, str)) {
    // Line contains string of length > 0 then save it in vector
    if (str.size() > 0) {
      float v = std::stof(str);
      //    printf("std=%s, val= %0.2f\n", str.c_str(), v);
      mem.push_back(v);
    }
  }

  if (mem.size() < R * C) {
    //   printf("mem.size=%zu < %d*%d", mem.size(), R, C);
    return 1;
  }
  float img[R][C];
  float harris[R][C];
  int loc = 0;
  for (int i = 0; i < R; i++) {
    for (int j = 0; j < C; j++) {
      img[i][j] = mem[loc];
      loc++;
    }
  }
  // printf("\n----------------------------------------\n\n");
  harris_hls(harris, img);
  loc = 0;
  for (int i = 0; i < R; i++) {
    for (int j = 0; j < C; j++) {
      if (harris[i][j] > 0) {
        printf("   %d: %f,\n", loc, harris[i][j]);
        loc++;
      }
    }
  }

  return 0;
}
