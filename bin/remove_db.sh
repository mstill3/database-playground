#!/usr/bin/env bash
###################################################
#  Stop and remove the  database docker container
###################################################

# Set local variables
DOCKER_CONTAINER_NAME="database"

# Stop docker container if already running
docker stop "$DOCKER_CONTAINER_NAME"

# Remove docker container and volume if already exist
docker rm -v "$DOCKER_CONTAINER_NAME"
