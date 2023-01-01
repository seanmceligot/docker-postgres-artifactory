#! /bin/bash
source .env
set -x
tmux rename-window $0
docker run \
    --name ${jf_container} \
    --network "${docker_network}" \
    --rm \
    -it \
    --entrypoint /bin/bash \
    releases-docker.jfrog.io/jfrog/artifactory-oss:latest
