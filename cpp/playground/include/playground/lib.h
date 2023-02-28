#ifndef LIB_H
#define LIB_H
#include <stdint.h>

#include <cstdint>

namespace cpp_playground {

#ifdef __cplusplus
extern "C" {
#endif

int32_t add(int32_t a, int32_t b);

int32_t sub(int32_t a, int32_t b);

#ifdef __cplusplus
}
#endif

}  // namespace cpp_playground

#endif  // !LIB_H
