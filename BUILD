load("@rules_python//python:pip.bzl", "compile_pip_requirements")
load("@bazel_gazelle//:def.bzl", "gazelle")

# This rule adds a convenient way to update the requirements file.
compile_pip_requirements(
    name = "py_deps",
    extra_args = ["--allow-unsafe"],
    requirements_in = "//bazel/python:requirements.in",
    requirements_txt = "//bazel/python:requirements_lock.txt",
)

# gazelle:prefix github.com/aaaaaaason/repo
gazelle(name = "gazelle")

gazelle(
    name = "go_deps",
    args = [
        "-from_file=bazel/go/go.mod",
        "-to_macro=//bazel/go/deps.bzl%go_dependencies",
        "-prune",
    ],
    command = "update-repos",
)
