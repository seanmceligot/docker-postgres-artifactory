#! /bin/bash
source .env
set -x

#docker exec -it ${pg_container} psql -d ${database} -U i  $*
docker exec -it ${pg_container} su postgres -c "pg_dump -d artifactory -U artifactory -C" | tee dump.sql

#/usr/bin/pg_dump
#psql -h artifactory_postgresql -d ${database} -U artifactory $*

