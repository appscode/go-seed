## Development Guide
This document is intended to be the canonical source of truth for things like supported toolchain versions for building Go-seed.
If you find a requirement that this doc does not capture, please submit an issue on github.

This document is intended to be relative to the branch in which it is found. It is guaranteed that requirements will change over time
for the development branch, but release branches of Go-seed should not change.

### Build Go-seed
Some of the Go-seed development helper scripts rely on a fairly up-to-date GNU tools environment, so most recent Linux distros should
work just fine out-of-the-box.

#### Setup GO
Go-seed is written in Google's GO programming language. Currently, Go-seed is developed and tested on **go 1.8.3**. If you haven't set up a GO
development environment, please follow [these instructions](https://golang.org/doc/code.html) to install GO.

#### Download Source

```console
$ go get github.com/appscode/go-seed
$ cd $(go env GOPATH)/src/github.com/appscode/go-seed
```

#### Install Dev tools
To install various dev tools for Go-seed, run the following command:

```console
# setting up dependencies for compiling go-seed...
$ ./hack/builddeps.sh
```

#### Build Binary
```
$ ./hack/make.py
$ go-seed version
```

#### Dependency management
Go-seed uses [Glide](https://github.com/Masterminds/glide) to manage dependencies. Dependencies are already checked in the `vendor` folder.
If you want to update/add dependencies, run:
```console
$ glide slow
```

#### Build Docker images
To build and push your custom Docker image, follow the steps below. To release a new version of Go-seed, please follow the [release guide](/docs/developer-guide/release.md).

```console
# Build Docker image
$ ./hack/docker/go-seed/setup.sh; ./hack/docker/go-seed/setup.sh push

# Add docker tag for your repository
$ docker tag appscode/go-seed:<tag> <image>:<tag>

# Push Image
$ docker push <image>:<tag>
```

#### Generate CLI Reference Docs
```console
$ ./hack/gendocs/make.sh
```
