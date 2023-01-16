#! /bin/bash
source .env
set -x

if [ -n ${TMUX} ]; then
  tmux rename-window jfrog-shell
fi
docker run \
      --network "${docker_network}" \
    	--rm \
    	-it \
      --entrypoint /bin/bash \
    	mceligot/jfrog  | tee $0.log
