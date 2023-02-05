#include "foo.h"
#include <memory>

namespace cpp_playground {

Foo::Foo(int32_t fa, int32_t fb) : _fa(fa), _fb(fb) {}

int32_t Foo::fa() { return _fa; }

int32_t Foo::fb() { return _fb; }

std::ostream &operator<<(std::ostream &out, const Foo &f) {
  out << "Foo(" << f._fa << "," << f._fb << ")" << std::endl;
  return out;
}

void test_foo() {
  Foo f(3, 6);
  std::cout << f << std::endl;

  // auto ptr = std::make_unique<Foo>(1, 4);
  std::unique_ptr<Foo> ptr = std::make_unique<Foo>(1, 4);

  std::cout << *ptr << std::endl;

  // auto ptr2 = ptr;

  std::unique_ptr<Foo> ptr2(ptr.release());

  std::cout << *ptr2 << std::endl;
}

} // namespace cpp_playground
