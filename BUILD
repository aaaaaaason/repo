load("@rules_python//python:pip.bzl", "compile_pip_requirements")
load("@bazel_gazelle//:def.bzl", "gazelle")
load("@hedron_compile_commands//:refresh_compile_commands.bzl", "refresh_compile_commands")

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


refresh_compile_commands(
    name = "refresh_compile_commands",

    # Specify the targets of interest.
    # For example, specify a dict of targets and any flags required to build.
    targets = {
      "//cpp/playground": "",
    },
    # No need to add flags already in .bazelrc. They're automatically picked up.
    # If you don't need flags, a list of targets is also okay, as is a single target string.
    # Wildcard patterns, like //... for everything, *are* allowed here, just like a build.
      # As are additional targets (+) and subtractions (-), like in bazel query https://docs.bazel.build/versions/main/query.html#expressions
    # And if you're working on a header-only library, specify a test or binary target that compiles it.
)
