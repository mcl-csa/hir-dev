#include <cstdint>
extern "C" int32_t add_f32_hw(int32_t a, int32_t b);
extern "C" int32_t sub_f32_hw(int32_t a, int32_t b);
extern "C" int32_t mul_f32_hw(int32_t a, int32_t b);
extern "C" char ugt_f32_hw(int32_t a, int32_t b);
extern "C" int32_t neg_f32_hw(int32_t a);
extern "C" int32_t select_f32_hw(char cmp, int32_t a, int32_t b);
