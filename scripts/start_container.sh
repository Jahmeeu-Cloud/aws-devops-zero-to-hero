#!/bin/bash
set -e

# 1. Build the image with the specific tag
# Replace 'latest' if you are using specific versioning
docker build -t horlacloud/simple-python-app:latest .

# Pull the Docker image from Docker Hub
docker push horlacloud/simple-python-app:latest

# Run the Docker image as a container
docker run -d -p 5000:5000 --name python-app horlacloud/simple-python-app:latest
