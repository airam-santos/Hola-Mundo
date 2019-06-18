#!/bin/bash

echo "Importing SSH Key."

echo "REMOTE_PORT= ${REMOTE_PORT}"
echo "REMOTE_USER= ${REMOTE_USER}"
echo "REMOTE_HOST= ${REMOTE_HOST}"

openssl aes-256-cbc -K $encrypted_3ee00ade31b5_key -iv $encrypted_3ee00ade31b5_iv -in deploy.enc -out deploy-travis -d
eval "$(ssh-agent -s)"
chmod 600 deploy-travis
ssh-add deploy-travis