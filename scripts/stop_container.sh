#!/bin/bash
set -e

# Define the image name and container name (if you use a specific name)
IMAGE_NAME="rakeshilpa123/digital_marketing_tween_agency:latest"
CONTAINER_NAME="heuristic_raman"

docker rm -f $CONTAINER_NAME
docker image prune -f
