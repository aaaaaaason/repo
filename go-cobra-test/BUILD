load("@io_bazel_rules_go//go:def.bzl", "go_binary", "go_library")

go_library(
    name = "go-cobra-test_lib",
    srcs = ["main.go"],
    importpath = "github.com/aaaaaaason/repo/go-cobra-test",
    visibility = ["//visibility:private"],
    deps = ["@com_github_spf13_cobra//:cobra"],
)

go_binary(
    name = "go-cobra-test",
    embed = [":go-cobra-test_lib"],
    visibility = ["//visibility:public"],
)
