#include "absl.h"

#include "absl/status/status.h"
#include "absl/status/statusor.h"
#include "absl/strings/str_cat.h"
#include "absl/strings/str_join.h"
#include "absl/time/clock.h"
#include "absl/time/time.h"
#include "fmt/core.h"

namespace cpp_playground {

void TestAbslTime() {
  absl::Time now = absl::Now();

  fmt::print("time: {}\n", absl::UnparseFlag(now));

  // https://en.wikipedia.org/wiki/List_of_tz_database_time_zones
  absl::TimeZone tz;
  absl::LoadTimeZone("Asia/Taipei", &tz);

  // https://github.com/abseil/abseil-cpp/blob/bd624d9f9825f76f14453beb3df81d82b9e17062/absl/time/time.h#L1338
  fmt::print("local time: {}\n", absl::FormatTime(absl::RFC3339_full, now, tz));

  absl::Duration ten_mins = absl::Minutes(10);
  fmt::print("10 minutes later: {}\n",
             absl::FormatTime(absl::RFC3339_full, now + ten_mins, tz));

  auto six_hundred_secs = absl::ToInt64Seconds(ten_mins);
  fmt::print("10 minutes to seconds: {} secs\n", six_hundred_secs);
}

void TestAbslStringUtilities() {
  fmt::print("strcat a, b, c: {}\n", absl::StrCat("a", "b", "c"));
  std::string s("this is a string");
  absl::string_view sv("this is a string view");
  absl::StrAppend(&s, ", ", sv);
  fmt::print("append string view to string: {}\n", s);
  fmt::print("str join a, b, c: {}\n", absl::StrJoin({"a", "b", "c"}, ","));
}

absl::StatusOr<int32_t> DoSomething(bool return_err) {
  if (return_err) {
    return absl::UnknownError("unknown error");
  }
  return 100;
}

void TestAbslStatus() {
  absl::StatusOr<int32_t> r = DoSomething(true);
  if (!r.ok()) {
    fmt::print("got error: {}\n", r.status().message());
    return;
  }
  fmt::print("got value: {}\n", r.value());
}

}  // namespace cpp_playground
