#! /bin/bash
source .env
set -x

if [ -n "${TMUX}" ]; then
tmux rename-window postgres
fi
docker run --rm  \
    --name "${pg_container}"  \
    --network "${docker_network}" \
    -p ${db_port}:5432 \
    -e POSTGRES_USER=${db_user}  \
    -e POSTGRES_PASSWORD="${db_pass}" \
    -e POSTGRES_DB=${database} \
    -e PGDATA=/var/lib/postgresql/data/pgdata \
    -v ${pg_volume}:/var/lib/postgresql/data \
    ${pg_image} postgres -c log_statement=all
