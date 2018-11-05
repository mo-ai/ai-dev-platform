#!/usr/bin/env bash

curDir=`pwd`
baseDir=$(dirname $0)
cd $baseDir
home=`pwd`

sudo docker stop nexus-repos
sudo docker rm nexus-repos

sudo docker run -d -p 8081:8081 --name nexus-repos -v nexus-data:/nexus-data nexus-repos:1.0

cd $curDir