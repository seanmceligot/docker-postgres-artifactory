#! /bin/bash
source .env
set -x

systemctl start docker
docker pull releases-docker.jfrog.io/jfrog/artifactory-oss:latest
docker pull ${pg_volume}
