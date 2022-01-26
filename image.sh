#!/bin/bash

echo "*************************"
echo "**Building docker image**"
echo "*************************"

cd java-app
docker-compose build --no-cache
