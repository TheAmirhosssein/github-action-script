#!/bin/bash

TARGET_DIR=$1;
DOCKER_REGISTRY=$2;

cd $TARGET_DIR;

export DOCKER_REGISTRY=$DOCKER_REGISTRY

docker compose -f docker-compose.prod.yaml down
docker compose -f docker-compose.prod.yaml pull
docker compose -f docker-compose.prod.yaml up -d