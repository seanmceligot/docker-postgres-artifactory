#! /bin/sh
source ./.env
set -e

docker build -t mceligot/jfrog . 2>&1 | tee build.log

if [ -n ${TMUX} ]; then
  tmux rename-window jfrog-run
fi
docker run \
    --name ${jf_container} \
    --network "${docker_network}" \
    --rm \
    -it \
    mceligot/jfrog  | tee $0.log
