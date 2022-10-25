#!/bin/bash

mkdir -p ~/.ssh
chmod 700 ~/.ssh
ssh-keyscan $GOTTY_HOST_IP > ~/.ssh/known_hosts
chmod 644 ~/.ssh/known_hosts
touch ~/.ssh/id_rsa
cat $GOTTY_SSH_KEY_PATH | sed -r '/^\s*$/d' > ~/.ssh/id_rsa
echo -e '\n' >>  ~/.ssh/id_rsa
chmod 600 ~/.ssh/id_rsa

export GOTTY_OPTIONS="--port 8080 --permit-write --permit-arguments"

/app/gotty ${GOTTY_OPTIONS} sh "/app/ssh-session.sh"
