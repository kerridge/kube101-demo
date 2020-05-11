#!/bin/bash

# 1. create or update the deployment
kubectl apply -f deployments/deployment.yaml

# 2. create a service which exposes the deployment on port 9090 (our open app port)
kubectl expose deployment my-go-app --type=NodePort --name=my-go-service --target-port=9090

# 3. create or update the service
kubectl apply -f deployments/service.yaml