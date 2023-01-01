#! /bin/bash
source .env
set -x

docker volume create ${pg_volume}
docker network create  ${docker_network}
