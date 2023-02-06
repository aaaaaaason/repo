load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")
load("@rules_foreign_cc//foreign_cc:defs.bzl", "cmake")

_ALL_CONTENT = """\
filegroup(
    name = "all_srcs",
    srcs = glob(["**"]),
    visibility = ["//visibility:public"],
)
"""

def cpp_dependencies():
    http_archive(
      name = "com_google_absl",
      urls = ["https://github.com/abseil/abseil-cpp/archive/a69b0ae5cdba53a45617afc408618a3e1ac244de.zip"],
      strip_prefix = "abseil-cpp-a69b0ae5cdba53a45617afc408618a3e1ac244de",
    )

    http_archive(
      name = "com_github_fmtlib_fmt",
      build_file_content = _ALL_CONTENT,
      urls = ["https://github.com/fmtlib/fmt/archive/refs/tags/9.1.0.zip"],
      strip_prefix = "fmt-9.1.0",
    )

    http_archive(
      name = "com_github_gabime_spdlog",
      build_file_content = _ALL_CONTENT,
      urls = ["https://github.com/gabime/spdlog/archive/refs/tags/v1.11.0.zip"],
      strip_prefix = "spdlog-1.11.0",
    )
