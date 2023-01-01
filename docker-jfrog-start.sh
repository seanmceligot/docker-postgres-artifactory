#! /bin/bash
source .env
set -x
./docker-jfrog-config.sh
docker exec ${jf_container} sh -x /entrypoint-artifactory.sh | tee update.log
