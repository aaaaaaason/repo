#include <iostream>
#include <string>
#include <vector>

#include "absl/log/log.h"
#include "fmt/core.h"
#include "foo.h"
#include "spdlog/spdlog.h"

int main() {
  LOG(INFO) << "hi";
  fmt::print("Hello world!");
  spdlog::info("welcome spdlog");

  cpp_playground::test_foo();
  return 0;
}
