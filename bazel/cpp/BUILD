load(":cc_toolchain_config.bzl", "cc_toolchain_config")
load("@rules_foreign_cc//foreign_cc:defs.bzl", "cmake")

package(default_visibility = ["//visibility:public"])

#filegroup(name = "clang_suite")

cc_toolchain_suite(
    name = "clang_suite",
    toolchains = {
        "k8": ":k8_toolchain",
    },
)

filegroup(name = "empty")

cc_toolchain(
    name = "k8_toolchain",
    toolchain_identifier = "k8_toolchain",
    toolchain_config = ":k8_toolchain_config",
    all_files = ":empty",
    compiler_files = ":empty",
    dwp_files = ":empty",
    linker_files = ":empty",
    objcopy_files = ":empty",
    strip_files = ":empty",
    supports_param_files = 0,
)

cc_toolchain_config(name = "k8_toolchain_config")

# External deps
cmake(
    name = "com_github_fmtlib_fmt",
    lib_source = "@com_github_fmtlib_fmt//:all_srcs",
    defines = ["FMT_HEADER_ONLY"],
    out_static_libs = ["libfmt.a"],
)

cmake(
    name = "com_github_gabime_spdlog",
    lib_source = "@com_github_gabime_spdlog//:all_srcs",
    defines = ["SPDLOG_FMT_EXTERNAL"],
    deps = ["//bazel/cpp:com_github_fmtlib_fmt"],
    out_static_libs = ["libspdlog.a"],
)

