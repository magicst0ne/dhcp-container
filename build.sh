#!/bin/bash

#docker buildx build --platform=linux/amd64,linux/arm64,darwin/amd64,darwin/arm64 \
docker buildx build --platform=linux/amd64,linux/arm64,darwin/amd64,darwin/arm64 \
                    --progress=plain \
                    --no-cache \
                    -t ninepeach/dhcpd --push .
