#!/usr/bin/env bash

curDir=`pwd`
baseDir=$(dirname $0)
cd $baseDir
home=`pwd`

sudo docker stop nexus-helm
sudo docker rm nexus-helm

sudo docker run -d -p 8081:8081 --name nexus-helm -v nexus-data:/nexus-data nexus-repository-helm:0.0.1

cd $curDir