#!/bin/bash

IMAGE_NAME="devops_beadando"
CONTAINER_NAME="devops_beadando_container"
PORT_OUT=8080
PORT_IN=5001

echo " Régi konténer leállítása (ha fut)..."
docker stop $CONTAINER_NAME 2>/dev/null
docker rm $CONTAINER_NAME 2>/dev/null

echo " Docker image újraépítése..."
docker build -t $IMAGE_NAME:v1 .

if [ $? -ne 0 ]; then
    echo "Docker build FAILED!"
    exit 1
fi

echo "Konténer indítása..."
docker run -d \
    --name $CONTAINER_NAME \
    -p $PORT_OUT:$PORT_IN \
    $IMAGE_NAME:v1

if [ $? -ne 0 ]; then
    echo "A konténer indítása sikertelen!"
    exit 1
fi

echo "Böngésző indítása: http://localhost:$PORT_OUT"

open http://localhost:$PORT_OUT


