#!/bin/bash

# Build image dari Dockerfile dengan tag v1
docker build -t item-app:v1 .

# Tampilkan daftar image
docker images

# Rename/tag ulang image sesuai format Docker Hub
docker tag item-app:v1 edgartanamal04/item-app:v1

# Login ke Docker Hub
echo $PASSWORD_DOCKER_HUB | docker login -u edgartanamal04 --password-stdin

# Push image ke Docker Hub
docker push edgartanamal04/item-app:v1
