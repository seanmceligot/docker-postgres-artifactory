#! /bin/bash
source .env
set -x

docker cp artifactory_bootstrap/system.yaml ${jf_container}:/artifactory_bootstrap/ # /opt/jfrog/artifactory/var/etc/system.yaml
docker cp artifactory_bootstrap/entrypoint-artifactory.sh  ${jf_container}:/

if [ ! -f artifactory_bootstrap/join.key ]; then
    openssl rand -hex 16 > artifactory_bootstrap/join.key
fi
docker cp artifactory_bootstrap/join.key ${jf_container}:/artifactory_bootstrap/ #/opt/jfrog/artifactory/var/etc/security/join.key
docker cp fetch/master.key ${jf_container}:/artifactory_bootstrap/  #/var/opt/jfrog/artifactory/etc/security/master.key

#docker exec ${jf_container} chown artifactory: /var/opt/jfrog/artifactory/etc/security/master.key /opt/jfrog/artifactory/var/etc/security/join.key /opt/jfrog/artifactory/var/etc/system.yaml

docker exec ${jf_container} ls -l /var/opt/jfrog/artifactory/etc/security/master.key /opt/jfrog/artifactory/var/etc/security/join.key /opt/jfrog/artifactory/var/etc/system.yaml /artifactory_bootstrap/
