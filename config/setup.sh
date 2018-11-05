#!/usr/bin/env bash

function setupCentosRepos(){
    sudo mkdir /etc/repos.d.bak
    sudo mv /etc/repos.d/*   /etc/repos.d.bak
    sudo cp etc/repos.d/nexus.repo   /etc/repos.d
}

function setupDocker(){
    sudo mkdir /etc/docker
    sudo cp etc/docker/daemon.json  /etc/docker
}

function setupPki(){
    sudo cp etc/pki/rpm-gpg/*     /etc/pki/rpm-gpg
}

function isCentos(){
    test -e /etc/redhat-release
}

function isUbuntu(){
    uname -a | grep ubuntu > /dev/null
}

function runOnCentos(){
    setupCentosRepos
    setupDocker
    setupPki
}

function runOnUbuntu(){
    setupDocker
}

function run(){
    if isCentos; then
        runOnCentos
        return
    fi

    if isUbuntu; then
        runOnUbuntu
        return
    fi

    echo "Not supported on this OS!"
}

run