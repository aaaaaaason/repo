cc_library(
    name = "com_github_libcpr_cpr",
    hdrs = glob([
        "include/**/*.h",
    ]),
    srcs = glob(["cpr/**/*.cpp"]),
    # From https://github.com/hedronvision/bazel-make-cc-https-easy/blob/main/curl.BUILD
    linkopts = ["-lcurl"],
    includes = ["include"],
    visibility = ["//visibility:public"],
)
