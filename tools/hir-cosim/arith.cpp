#include <cstdint>
#include <iostream>

extern "C" int32_t add_f32(int32_t a, int32_t b) {
  float aa = reinterpret_cast<float &>(a);
  float bb = reinterpret_cast<float &>(b);
  float result = aa + bb;
  return reinterpret_cast<int32_t &>(result);
}
extern "C" int32_t sub_f32(int32_t a, int32_t b) {
  float aa = reinterpret_cast<float &>(a);
  float bb = reinterpret_cast<float &>(b);
  float result = aa - bb;
  return reinterpret_cast<int32_t &>(result);
}
extern "C" int32_t mul_f32(int32_t a, int32_t b) {
  float aa = reinterpret_cast<float &>(a);
  float bb = reinterpret_cast<float &>(b);
  float result = aa * bb;
  return reinterpret_cast<int32_t &>(result);
}
extern "C" char ugt_f32(int32_t a, int32_t b) {
  float aa = reinterpret_cast<float &>(a);
  float bb = reinterpret_cast<float &>(b);
  return aa > bb ? 1 : 0;
}
extern "C" int32_t neg_f32(int32_t a) {
  float aa = reinterpret_cast<float &>(a);
  float result = -aa;
  return reinterpret_cast<int32_t &>(result);
}
extern "C" int32_t select_f32(char cmp, int32_t a, int32_t b) {
  return cmp ? a : b;
}
