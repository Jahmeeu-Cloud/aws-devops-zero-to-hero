#!/bin/bash
set -e

# Pull the Docker image from Docker Hub
docker push horlacloud/simple-python-app

# Run the Docker image as a container
docker run -d -p 5000:5000 horlacloud/simple-python-app
