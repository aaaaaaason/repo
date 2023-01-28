workspace(name = 'repo')

# Python

load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

http_archive(
    name = "rules_python",
    sha256 = "8c15896f6686beb5c631a4459a3aa8392daccaab805ea899c9d14215074b60ef",
    strip_prefix = "rules_python-0.17.3",
    url = "https://github.com/bazelbuild/rules_python/archive/refs/tags/0.17.3.tar.gz",
)

load("@rules_python//python:repositories.bzl", "py_repositories")

py_repositories()

http_archive(
    name = "bazel_skylib",
    sha256 = "f24ab666394232f834f74d19e2ff142b0af17466ea0c69a3f4c276ee75f6efce",
    urls = [
        "https://mirror.bazel.build/github.com/bazelbuild/bazel-skylib/releases/download/1.4.0/bazel-skylib-1.4.0.tar.gz",
        "https://github.com/bazelbuild/bazel-skylib/releases/download/1.4.0/bazel-skylib-1.4.0.tar.gz",
    ],
)

load("@rules_python//python:repositories.bzl", "python_register_toolchains")

python_register_toolchains(
    name = "python3_9",
    # Available versions are listed in @rules_python//python:versions.bzl.
    # We recommend using the same version your team is already standardized on.
    python_version = "3.9",
)

load("//bazel/python:deps.bzl", "python_dependencies")

python_dependencies()

