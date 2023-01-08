#! /bin/bash
source .env
set -x

_tmux rename-window pg-run
docker run \
    --name ${jf_container} \
    --network "${docker_network}" \
    --mount type=bind,source="$(pwd)"/artifactory_bootstrap,target=/artifactory_bootstrap \
    --rm \
    -it \
    --entrypoint /bin/bash \
    releases-docker.jfrog.io/jfrog/artifactory-oss:latest
