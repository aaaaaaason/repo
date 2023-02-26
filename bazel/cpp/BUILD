load(":cc_toolchain_config.bzl", "cc_toolchain_config")

package(default_visibility = ["//visibility:public"])

#filegroup(name = "clang_suite")

cc_toolchain_suite(
    name = "clang_suite",
    toolchains = {
        "k8": ":k8_toolchain",
        "darwin_arm64": ":darwin_arm64_toolchain",
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

cc_toolchain_config(name = "k8_toolchain_config",
    gcc_path = "/usr/bin/clang-15",
    ld_path = "/usr/bin/ld.lld-15",
    ar_path = "/usr/bin/llvm-ar-15",
    cpp_path = "/usr/bin/clang++-15",
    cxx_builtin_include_directories = [
        "/usr/lib/llvm-15",
        "/usr/include",
    ],
)

cc_toolchain(
    name = "darwin_arm64_toolchain",
    toolchain_identifier = "darwin_arm64_toolchain",
    toolchain_config = ":darwin_arm64_toolchain_config",
    all_files = ":empty",
    compiler_files = ":empty",
    dwp_files = ":empty",
    linker_files = ":empty",
    objcopy_files = ":empty",
    strip_files = ":empty",
    supports_param_files = 0,
)

# This do not work due to https://github.com/bazelbuild/bazel/issues/14118#issuecomment-1336500934
# Have tried brew install llvm but got undefined symbol for architecture arm64 error
cc_toolchain_config(
    name = "darwin_arm64_toolchain_config",
    gcc_path = "/usr/bin/clang",
    ld_path = "/usr/bin/ld",
    ar_path = "/usr/bin/ar",
    cpp_path = "/usr/bin/clang++",
    cxx_builtin_include_directories = [
    ],   
)

