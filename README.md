# repo

## Python

### Add External Dependencies

```
bazel run "//:py_deps.update"
```

### Auto Completion

Use pyenv virtualenv and run

```
pip install -r bazel/python/requirements_lock.txt
```

## Golang

### Add External Dependencies

Update bazel/go/go.mod and run
```
bazel run "//:go_deps"
```

### Update BUILD
```
bazel run "//:gazelle"
```

