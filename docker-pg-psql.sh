#! /bin/bash
source .env
set -x

#docker exec -it ${pg_container} psql -d ${database} -U i  $*
docker exec -it ${pg_container} psql -h artifactory_postgresql -d ${database} -U artifactory $*


