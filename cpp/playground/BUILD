
cc_binary(
  name = "playground",
  deps = [
    "@com_google_absl//absl/strings",
    "@com_google_absl//absl/log",
    "@com_google_absl//absl/time",
    "@com_google_absl//absl/flags:flag",
    "@com_google_absl//absl/flags:parse",
    "@com_google_absl//absl/status:status",
    "@com_google_absl//absl/status:statusor",
    "@com_github_fmtlib_fmt",
    "@com_github_gabime_spdlog",
    "@com_github_nlohmann_json//:com_github_nlohmann_json",
    "@com_github_libcpr_cpr//:com_github_libcpr_cpr",
  ],
  srcs = glob(["src/**", "include/**"], exclude = ["src/**/*_test.cc"]),
)

cc_library(
    name = "test",
    srcs = ["src/lib.cc"],
    hdrs = ["include/playground/lib.h"],
    includes = ["include"],
    visibility = ["//visibility:public"],
)

cc_test(
  name = "playground_test",
  size = "small",
  srcs = glob(["src/**", "include/**"], exclude = ["src/main.cc"]),
  deps = [
    "@com_google_absl//absl/strings",
    "@com_google_absl//absl/log",
    "@com_google_absl//absl/time",
    "@com_google_absl//absl/flags:flag",
    "@com_google_absl//absl/flags:parse",
    "@com_google_absl//absl/status:status",
    "@com_google_absl//absl/status:statusor",
    "@com_github_fmtlib_fmt",
    "@com_github_gabime_spdlog",
    "@com_github_nlohmann_json//:com_github_nlohmann_json",
    "@com_github_libcpr_cpr//:com_github_libcpr_cpr",
    "@com_github_google_googletest//:gtest_main",
  ],
)
