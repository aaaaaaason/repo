#include "cpr.h"

#include "cpr/cpr.h"
#include "fmt/core.h"
#include "nlohmann/json.hpp"

namespace cpp_playground {

void TestGet() {
  cpr::Response r = cpr::Get(
      cpr::Url{"https://api.github.com/repos/whoshuu/cpr/contributors"},
      cpr::Authentication{"user", "pass", cpr::AuthMode::BASIC},
      cpr::Parameters{{"anon", "true"}, {"key", "value"}});

  nlohmann::json res = nlohmann::json::parse(r.text);

  fmt::print("response:\n {}\n", res[0]["avatar_url"]);
}

void TestCpr() { TestGet(); }

}  // namespace cpp_playground
