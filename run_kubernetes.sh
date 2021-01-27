#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
dockerpath=herrfeder/udacity_devops_ml:latest

# Step 2
# Run the Docker Hub container with kubernetes
kubectl run udacitydevops --image=$dockerpath --port=10000

# Step 3:
# List kubernetes pods
kubectl get pods

# Step 4:
# Forward the container port to a host
kubectl port-forward udacitydevops 10000:10000
