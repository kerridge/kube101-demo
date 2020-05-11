#!/bin/bash

# build our docker image
docker build -t samkedge/go-app .

# push the image to docker.io
docker push samkedge/go-app:latest