#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
# dockerpath=<>
dockerpath=ahmedabdallah7/app


# Step 2
# Run the Docker Hub container with kubernetes
kubectl run app-pod --generator=run-pod/v1 --image=$dockerpath --port=80 --labels app=app-pod

# Step 3:
# List kubernetes pods
kubectl get pods

# Step 4:
# Forward the container port to a host
kubectl port-forward app-pod 8000:80

