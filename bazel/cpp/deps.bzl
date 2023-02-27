load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def cpp_dependencies():
    http_archive(
      name = "com_google_absl",
      urls = ["https://github.com/abseil/abseil-cpp/archive/a69b0ae5cdba53a45617afc408618a3e1ac244de.zip"],
      strip_prefix = "abseil-cpp-a69b0ae5cdba53a45617afc408618a3e1ac244de",
    )

    http_archive(
      name = "com_github_fmtlib_fmt",
      build_file = "//bazel/cpp:com_github_fmtlib_fmt.bzl",
      urls = ["https://github.com/fmtlib/fmt/archive/refs/tags/9.1.0.zip"],
      strip_prefix = "fmt-9.1.0",
    )

    http_archive(
      name = "com_github_gabime_spdlog",
      build_file = "//bazel/cpp:com_github_gabime_spdlog.bzl",
      urls = ["https://github.com/gabime/spdlog/archive/refs/tags/v1.11.0.zip"],
      strip_prefix = "spdlog-1.11.0",
    )

    http_archive(
      name = "com_github_nlohmann_json",
      build_file = "//bazel/cpp:com_github_nlohmann_json.bzl",
      urls = ["https://github.com/nlohmann/json/archive/refs/tags/v3.11.2.zip"],
      strip_prefix = "json-3.11.2",
    )

    http_archive(
      name = "com_github_libcpr_cpr",
      build_file = "//bazel/cpp:com_github_libcpr_cpr.bzl",
      patches = ["//bazel/cpp:com_github_libcpr_cpr.patch"],
      urls = ["https://github.com/libcpr/cpr/archive/refs/tags/1.10.0.tar.gz"],
      strip_prefix = "cpr-1.10.0",
    )
