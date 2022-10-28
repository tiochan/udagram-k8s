#!/usr/bin/env bash

base_path=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )

docker --version

#echo "$DOCKERHUB_TOKEN" | docker login -u "$DOCKERHUB_USERNAME" --password-stdin
docker-compose -f ${base_path}/docker-compose-build.yaml build --parallel

docker images

