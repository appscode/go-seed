#!/usr/bin/env bash

pushd $GOPATH/src/github.com/appscode/go-seed/hack/gendocs
go run main.go
popd
