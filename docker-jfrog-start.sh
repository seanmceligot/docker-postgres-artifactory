#! /bin/bash
source .env
set -x
#./docker-jfrog-config.sh
#docker exec ${jf_container} sh -x /entrypoint-artifactory.sh | tee update.log
tmux rename-window jfrog run
docker run \
    --name ${jf_container} \
    --network "${docker_network}" \
    --mount type=bind,source="$(pwd)"/artifactory_bootstrap,target=/artifactory_bootstrap \
    --rm \
    -it \
    releases-docker.jfrog.io/jfrog/artifactory-oss:latest
