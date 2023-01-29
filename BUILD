load("@rules_python//python:pip.bzl", "compile_pip_requirements")

# This rule adds a convenient way to update the requirements file.
compile_pip_requirements(
    name = "py_deps",
    extra_args = ["--allow-unsafe"],
    requirements_in = "//bazel/python:requirements.in",
    requirements_txt = "//bazel/python:requirements_lock.txt",
)

