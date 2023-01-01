#! /bin/bash
source .env
set -x

docker cp fetch/artifactory_bootstrap/entrypoint-artifactory.sh  ${jf_container}:/
docker cp fetch/artifactory_bootstrap/entrypoint-artifactory.sh  ${jf_container}:/

docker cp fetch/artifactory_bootstrap/join.key ${jf_container}:/join.key
docker cp fetch/master.key /var/opt/jfrog/artifactory/etc/security/master.key
