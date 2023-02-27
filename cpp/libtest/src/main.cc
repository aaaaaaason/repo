#include <cstdint>
#include <iostream>

#include "playground/lib.h"

int main() {
  int32_t res = cpp_playground::add(1, 3);
  std::cout << res << std::endl;
  return 0;
}
