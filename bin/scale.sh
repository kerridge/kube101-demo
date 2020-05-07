#!/bin/bash

# Script to scale the node down and then up again, this causes a new image pull
kubectl scale --replicas=0 deployment my-go-app
kubectl scale --replicas=1 deployment my-go-app
