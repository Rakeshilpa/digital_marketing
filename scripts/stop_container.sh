#!/bin/bash
set -e

# Define the image name and container name (if you use a specific name)
IMAGE_NAME="rakeshilpa123/digital_marketing_tween_agency:latest"
CONTAINER_NAME="heuristic_raman"

# Stop the container if it is running
if [ $(docker ps -q -f name=$CONTAINER_NAME) ]; then
    echo "Stopping container: $CONTAINER_NAME"
    docker stop $CONTAINER_NAME
fi

# Remove the container if it exists
if [ $(docker ps -a -q -f name=$CONTAINER_NAME) ]; then
    echo "Removing container: $CONTAINER_NAME"
    docker rm $CONTAINER_NAME
fi

# Remove any dangling images (optional, for cleanup)
echo "Removing dangling images"
docker image prune -f
