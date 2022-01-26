#!/bin/bash

echo "**************"
echo "**Logging in**"
echo "**************"

IMAGE=$1
BUILD_TAG=$2
USERNAME=$3
PASSWORD=$4

docker login -u $USERNAME -p $PASSWORD

echo "*****************"
echo "**Pushing image**"
echo "*****************"

docker tag $IMAGE:$BUILD_TAG $USERNAME/$IMAGE:$BUILD_TAG
docker push $USERNAME/$IMAGE:$BUILD_TAG
