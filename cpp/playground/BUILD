
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
  ],
  srcs = glob(["src/**"]),
)

