#!/usr/bin/env bash

## Images uploaded from build.sh
echo "Starting upload process, user $DOCKERHUB_USERNAME, pass: $DOCKERHUB_TOKEN"
echo "$DOCKERHUB_TOKEN" | docker login -u "$DOCKERHUB_USERNAME" --password-stdin

docker push tiochan/udagram-reverseproxy:v1
docker push tiochan/udagram-api-user:v1
docker push tiochan/udagram-api-feed:v1
docker push tiochan/udagram-frontend:v1
