#!/usr/bin/env bash


DOCKER_PROXY="10.146.3.105:8083/"
SERVER_ADDRESS="10.167.160.39"
ADDRESS="10.167.160.39"

sudo docker run -d --privileged --restart=unless-stopped \
     --net=host -v /etc/kubernetes:/etc/kubernetes \
     -v /var/run:/var/run ${DOCKER_PROXY}rancher/rancher-agent:v2.0.8 \
     --server https://${SERVER_ADDRESS}:8443 \
     --token lkgjbn49ww4blqs4zkf9f8k44clngtzh9x5v64n2fs5htt9gb8tqqv \
     --ca-checksum 518535daa15f4bd507afd766183fefefadd6f93690c74f64942703cacdea3d94 \
     --address ${ADDRESS} --internal-address ${ADDRESS} \
     --worker

