load("@python3_9//:defs.bzl", "interpreter")
load("@rules_python//python:pip.bzl", "pip_parse")

def python_dependencies():
    pip_parse(
        python_interpreter_target = interpreter,
    )

