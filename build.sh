#!/bin/bash

#docker buildx build --platform=linux/amd64,linux/arm64,darwin/amd64,darwin/arm64 \
#                    --progress=plain \
#                    --no-cache \
#                    -t ninepeach/dhcpd --push .

buildctl build \
--frontend dockerfile.v0 \
--local context=. \
--local dockerfile=. \
--output type=image,name=docker.io/ninepeach/dhcpd,push=true
