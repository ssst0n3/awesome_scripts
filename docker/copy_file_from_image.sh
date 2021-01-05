#!/bin/bash
set -ex
image_name=$1
container_path=$2
host_path=$3
id=$(docker create $1)
docker cp $id:$2 $3
docker rm -v $id
