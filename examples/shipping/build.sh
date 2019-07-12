#!/bin/sh
echo Building shipping:build

docker build -t shipping:build . -f Dockerfile.build

docker container create --name extract shipping:build  
docker container cp extract:/go/src/github.com/go-kit/kit/examples/shipping/shipping ./shipping  
docker container rm -f extract

echo Building shipping:latest

docker build --no-cache -t shipping:latest .
rm ./shipping