#!/usr/bin/env bash

export GO111MODULE=on
export GOPROXY=https://goproxy.cn
# build webhook
CGO_ENABLED=0 GOOS=linux go build -a -installsuffix cgo -o admission-webhook-example ../cmd/main.go

# build docker image
docker build --no-cache -t hehe04/admission-webhook-example:v1 .
#rm -rf admission-webhook-example

#docker push ${DOCKER_USER}/admission-webhook-example:v1