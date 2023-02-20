licenses(["notice"])  # 3-Clause BSD

exports_files(["LICENSE.MIT"])

cc_library(
    name = "com_github_nlohmann_json",
    hdrs = glob([
        "include/**/*.hpp",
    ]),
    includes = ["include"],
    visibility = ["//visibility:public"],
    alwayslink = 1,
)
