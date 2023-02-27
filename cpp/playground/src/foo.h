#ifndef FOO_H
#define FOO_H

#include <cstdint>
#include <iostream>

namespace cpp_playground {

class Foo {
 public:
  Foo(int32_t fa, int32_t fb);
  Foo(const Foo &f) = default;
  Foo &operator=(const Foo &f) = default;
  int32_t fa();
  int32_t fb();

  friend std::ostream &operator<<(std::ostream &out, const Foo &f);

 private:
  int32_t _fa;
  int32_t _fb;
};

void TestFoo();

}  // namespace cpp_playground

#endif  // !FOO_H
