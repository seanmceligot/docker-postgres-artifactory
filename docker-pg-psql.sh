#! /bin/bash
source .env
set -x

#docker exec -it ${pg_container} psql -h ${pg_host} -d ${database} -U artifactory $*
docker exec -it ${pg_container} psql -h ${pg_host} -d ${database} -U ${db_user} $*


