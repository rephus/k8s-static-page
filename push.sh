#!/bin/bash
TAG='static'
REPO="" # Add your favourite docker repo (dockerhub)

echo "Deploying with version $TAG"
docker build --build-arg DOMAIN_ARG=$DOMAIN -t "$REPO/static:$TAG" .
docker push "$REPO/static:$TAG"
echo "Pushed docker image: $REPO/static:$TAG"
kubectl set image deployment/static static="$REPO/static:$TAG"
