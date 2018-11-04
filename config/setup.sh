#!/usr/bin/env bash

function setupCentosRepos(){
    sudo mkdir /etc/repos.d.bak
    sudo mv /etc/repos.d/*   /etc/repos.d.bak
    sudo cp etc/repos.d/nexus.repo   /etc/repos.d
}

function setupDocker(){
    sudo cp etc/docker/daemon.json  /etc/docker
}

function setupPki(){
    sudo cp etc/pki/rpm-gpg/*     /etc/pki/rpm-gpg
}


function run(){
    setupCentosRepos
    setupDocker
    setupPki
}

run