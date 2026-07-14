#!/bin/bash
set -e

CONTAINER_NAME="simple-python-app"

echo "Stopping container..."

docker stop $CONTAINER_NAME || true
docker rm -f $CONTAINER_NAME || true

echo "Container removed."
