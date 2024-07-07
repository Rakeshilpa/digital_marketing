#!/bin/bash
set -e

# Pull the Docker image from Docker Hub 
docker pull rakeshilpa123/digital_marketing_tween_agency:latest

# Run the Docker image as a container
docker run -d -p 80:5001 rakeshilpa123/digital_marketing_tween_agency:latest
