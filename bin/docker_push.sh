#!/bin/bash

# make sure the deployment is up to date
kubectl apply -f ../deployment.yaml

# build our docker image
docker build -t samkedge/go-app .

# push the image to docker.io
docker push samkedge/go-app:latest