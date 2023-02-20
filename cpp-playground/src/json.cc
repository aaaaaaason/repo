#include "json.h"

#include "fmt/core.h"
#include "nlohmann/json.hpp"

namespace cpp_playground {

void TestNlohmannJson() {
  nlohmann::json j = R"({
    "a": "中文"
  })"_json;

  fmt::print("dump json: {}\n", j.dump());
}

}  // namespace cpp_playground
