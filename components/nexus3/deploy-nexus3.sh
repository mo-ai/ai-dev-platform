#!/usr/bin/env bash

curDir=`pwd`
baseDir=$(dirname $0)
cd $baseDir
home=`pwd`

docker stop nexus
docker rm nexus

docker run -d -p 8081:8081 --name nexus -v nexus-data:/nexus-data sonatype/nexus3

cd $curDir