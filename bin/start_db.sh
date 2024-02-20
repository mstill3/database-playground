#!/usr/bin/env bash
###################################
#  Run database docker container
###################################

# Get current script path
SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )

# Set directory paths
PARENT_DIR="$SCRIPT_DIR"/..

# Set local variables
DOCKER_IMAGE_NAME="postgres"
DOCKER_IMAGE_VERSION="latest"
DOCKER_CONTAINER_NAME="database"
DOCKER_DATABASE_PORT=5432
LOCAL_DATABASE_PORT=5432
DATABASE_PASSWORD="password"
LOCAL_INITDB_DIR="$PARENT_DIR/src/migrations"
LOCAL_ADHOC_SCRIPTS_DIR="$PARENT_DIR/src/scripts"

# Pull postgres docker image
docker pull "$DOCKER_IMAGE_NAME:$DOCKER_IMAGE_VERSION"

# Stop docker container if already running
docker stop "$DOCKER_CONTAINER_NAME" 2> /dev/null

# Remove docker container and volume if already exist
docker rm -v "$DOCKER_CONTAINER_NAME" 2> /dev/null

# Run the postgres docker container
docker run --name "$DOCKER_CONTAINER_NAME" \
           -e POSTGRES_PASSWORD="$DATABASE_PASSWORD" \
           -d \
           -p "$LOCAL_DATABASE_PORT:$DOCKER_DATABASE_PORT" \
           -v "$LOCAL_INITDB_DIR":/docker-entrypoint-initdb.d \
           -v "$LOCAL_ADHOC_SCRIPTS_DIR":/scripts \
           "$DOCKER_IMAGE_NAME:$DOCKER_IMAGE_VERSION"
