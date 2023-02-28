#include "cpp/playground/include/playground/lib.h"

#include <cstdint>

#include "gtest/gtest.h"

namespace cpp_playground {

TEST(LibTest, Add) {
  ASSERT_EQ(cpp_playground::add(3, 5), 8) << "expect 3 + 5 = 8";
}

TEST(LibTest, Sub) {
  ASSERT_EQ(cpp_playground::sub(3, 5), -2) << "expect 3 - 5 = -2";
}

}  // namespace cpp_playground
