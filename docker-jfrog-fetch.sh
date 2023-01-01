#! /bin/bash
source .env
set -x

mkdir -p fetch
docker cp ${jf_container}:/opt/jfrog/artifactory/app/bin/systemYamlHelper.sh fetch/
docker cp ${jf_container}:/opt/jfrog/artifactory/app/bin/installerCommon.sh fetch/
docker cp ${jf_container}:/artifactory_bootstrap fetch/
docker cp ${jf_container}:/docker/artifactory-oss/Dockerfile.artifactory fetch/
docker cp ${jf_container}:/entrypoint-artifactory.sh fetch/
docker cp ${jf_container}:/var/opt/jfrog/artifactory/etc/system.basic-template.yaml fetch/
docker cp ${jf_container}:/var/opt/jfrog/artifactory/etc/security/master.key fetch/

