#!/usr/bin/env bash

curDir=`pwd`
baseDir=$(dirname $0)
cd $baseDir
home=`pwd`

docker_cmd="sudo docker"

DOCKER_PROXY="10.146.3.105:8083/"

$docker_cmd stop rancher
$docker_cmd rm rancher

$docker_cmd run -d --name rancher --restart=unless-stopped \
  -e http_proxy="10.146.3.105:8888" \
  -e https_proxy="10.146.3.105:8888" \
  -e no_proxy="localhost,127.0.0.1,10.146.0.0/16,10.167.0.0/16" \
  -p 8089:80 -p 8443:443 \
  -v $home/rancher:/var/lib/rancher \
  ${DOCKER_PROXY}rancher/rancher:latest

cd $curDir