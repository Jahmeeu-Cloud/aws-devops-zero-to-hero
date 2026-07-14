#!/bin/bash
set -e

container_id=$(docker ps -q --filter "publish=5000")

if [ ! -z "$container_id" ]; then
    echo "Stopping container on port 5000: $container_id"
    docker stop $container_id
    docker rm -f $container_id
else
    echo "No container is currently running on port 5000."
fi
