#!/bin/bash
set -e

IMAGE_NAME="horlacloud/simple-python-app"
CONTAINER_NAME="simple-python-app"

echo "Pulling latest image..."
docker pull $IMAGE_NAME

echo "Removing old container if it exists..."
docker stop $CONTAINER_NAME || true
docker rm -f $CONTAINER_NAME || true

echo "Starting new container..."
docker run -d \
  --name $CONTAINER_NAME \
  -p 5000:5000 \
  --restart unless-stopped \
  $IMAGE_NAME

echo "Container started successfully."
