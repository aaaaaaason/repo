load("@rules_python//python:defs.bzl", "py_binary")
load("@py_deps//:requirements.bzl", "requirement")

py_binary(
  name = "py-etcd3-playground",
  srcs = ["main.py"],
  main = "main.py",
  deps = [
    requirement("python-etcd"),
  ]
)
