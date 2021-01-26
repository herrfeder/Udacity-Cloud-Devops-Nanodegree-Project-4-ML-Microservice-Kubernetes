#!/usr/bin/env bash

## Complete the following steps to get Docker running locally

# Step 1:
# Build image and add a descriptive tag
docker build . -t ml_predict_container
# Step 2: 
# List docker images
docker images
# Step 3: 
# Run flask app
docker run -p 10000:10000 ml_predict_container:latest
