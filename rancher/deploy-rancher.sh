#!/usr/bin/env bash

curDir=`pwd`
baseDir=$(dirname $0)
cd $baseDir
home=`pwd`

docker run -d --restart=unless-stopped \
  -p 8089:80 -p 8443:443 \
  -v $home/rancher:/var/lib/rancher \
  rancher/rancher:latest

cd $curDir