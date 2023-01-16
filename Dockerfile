from releases-docker.jfrog.io/jfrog/artifactory-oss:latest

COPY --chown=artifactory artifactory_bootstrap/system.yaml /opt/jfrog/artifactory/var/etc/system.yaml

COPY --chown=artifactory artifactory_bootstrap/entrypoint-artifactory.sh  /
#COPY artifactory_bootstrap/join.key /artifactory_bootstrap/join.key
COPY --chown=artifactory artifactory_bootstrap/join.key /opt/jfrog/artifactory/var/etc/security/join.key
COPY --chown=artifactory artifactory_bootstrap/master.key /opt/jfrog/artifactory/var/etc/security/master.key
RUN ls -l /opt/jfrog/artifactory/var/etc/security/join.key /opt/jfrog/artifactory/var/etc/security/master.key /opt/jfrog/artifactory/var/etc/system.yaml
#VOLUME /artifactory_bootstrap

