#include <cstdint>
#include <iostream>
#include <optional>
#include <string>
#include <vector>

#include "absl.h"
#include "absl/flags/flag.h"
#include "absl/flags/parse.h"
#include "fmt/format.h"
#include "fmt/ranges.h"
#include "foo.h"
#include "json.h"

ABSL_FLAG(bool, bool_flag, false, "a boolean flag");
ABSL_FLAG(int32_t, int32_flag, 20, "an int32 flag");
ABSL_FLAG(std::vector<std::string>, str_vec_flag,
          std::vector<std::string>({"a", "b", "c"}), "a vector of string");
ABSL_FLAG(std::optional<std::string>, opt_str_flag, std::nullopt,
          "an optional string");

void printResult() {
  fmt::print("bool_flag: {}\n", absl::GetFlag(FLAGS_bool_flag));
  fmt::print("int32_flag: {}\n", absl::GetFlag(FLAGS_int32_flag));
  fmt::print("str_vec_flag: {}\n", absl::GetFlag(FLAGS_str_vec_flag));
  if (absl::GetFlag(FLAGS_opt_str_flag).has_value()) {
    fmt::print("opt_str_flag: {}\n", absl::GetFlag(FLAGS_opt_str_flag).value());
  }
}

int main(int argc, char **argv) {
  absl::ParseCommandLine(argc, argv);
  printResult();
  cpp_playground::TestAbslTime();
  cpp_playground::TestFoo();
  cpp_playground::TestAbslStringUtilities();
  cpp_playground::TestAbslStatus();
  cpp_playground::TestNlohmannJson();
  return 0;
}
