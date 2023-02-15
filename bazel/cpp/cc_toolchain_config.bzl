# C++ Toolchain Configuration
#  https://bazel.build/docs/cc-toolchain-config-reference
#  https://github.com/bazelbuild/bazel/blob/master/tools/build_defs/cc/action_names.bzl
load("@bazel_tools//tools/build_defs/cc:action_names.bzl", "ACTION_NAMES")
load(
    "@bazel_tools//tools/cpp:cc_toolchain_config_lib.bzl",
    "feature",
    "flag_group",
    "flag_set",
    "tool_path",
)

all_compile_actions = [
    ACTION_NAMES.c_compile,
    ACTION_NAMES.cpp_compile,
    ACTION_NAMES.linkstamp_compile,
    ACTION_NAMES.assemble,
    ACTION_NAMES.preprocess_assemble,
    ACTION_NAMES.cpp_header_parsing,
    ACTION_NAMES.cpp_module_compile,
    ACTION_NAMES.cpp_module_codegen,
]

all_link_actions = [
    ACTION_NAMES.cpp_link_executable,
    ACTION_NAMES.cpp_link_dynamic_library,
    ACTION_NAMES.cpp_link_nodeps_dynamic_library,
]

def _impl(ctx):
    llvm_version = "15.0.7"
    llvm_prefix = "/usr"
    llvm_bindir = "/usr/bin"

    tool_paths = [
        tool_path(
            name = "gcc",
            path = llvm_bindir + "/clang-15",
        ),
        tool_path(
            name = "ld",
            path = llvm_bindir + "/ld.lld-15",
        ),
        tool_path(
            name = "ar",
            path = llvm_bindir + "/llvm-ar-15",
        ),
        tool_path(
            name = "cpp",
            path = llvm_bindir + "/clang++-15",
        ),
        tool_path(
            name = "gcov",
            path = llvm_bindir + "/llvm-cov",
        ),
        tool_path(
            name = "nm",
            path = llvm_bindir + "/llvm-nm",
        ),
        tool_path(
            name = "objdump",
            path = llvm_bindir + "/llvm-objdump",
        ),
        tool_path(
            name = "strip",
            path = llvm_bindir + "/llvm-strip",
        ),
    ]

    features = [
        feature(
            name = "default_compiler_flags",
            enabled = True,
            flag_sets = [
                flag_set(
                    actions = all_compile_actions,
                    flag_groups = ([
                        flag_group(
                            flags = [
                                "-O2", "-DNDEBUG",
                                "-Wall", "-Wextra", "-Wpedantic", "-fPIC",
                            ],
                        ),
                    ]),
                ),
            ],
        ),
        feature(
            name = "default_linker_flags",
            enabled = True,
            flag_sets = [
                flag_set(
                    actions = all_link_actions,
                    flag_groups = ([
                        flag_group(
                            flags = [
                                "-lc++", "-lc++abi",
                                "-lm", "-ldl", "-lpthread",
                            ],
                        ),
                    ]),
                ),
            ],
        ),
    ]

    return cc_common.create_cc_toolchain_config_info(
        ctx = ctx,
        features = features,
        cxx_builtin_include_directories = [
            "/usr/lib/llvm-15",
            "/usr/include",
        ],
        toolchain_identifier = "local",
        host_system_name = "local",
        target_system_name = "local",
        target_cpu = "k8",
        target_libc = "unknown",
        compiler = "clang",
        abi_version = "unknown",
        abi_libc_version = "unknown",
        tool_paths = tool_paths,
    )

cc_toolchain_config = rule(
    implementation = _impl,
    attrs = {},
    provides = [CcToolchainConfigInfo],
)

