#!/usr/bin/env bash

os=

function setupCentosRepos() {
    sudo mkdir /etc/repos.d.bak
    sudo mv /etc/repos.d/*   /etc/repos.d.bak
    sudo cp $os/etc/repos.d/nexus.repo   /etc/repos.d
}

function setupDocker(){
    sudo mkdir /etc/docker
    sudo cp $os/etc/docker/daemon.json  /etc/docker
}

function setupCentosPki(){
    sudo cp $os/etc/pki/rpm-gpg/*     /etc/pki/rpm-gpg
}

function setupUbuntuSource(){
    sudo mv /etc/apt/source.list /etc/apt/source.list.bak
    sudo cp $os/etc/apt/source.list /etc/apt
}

function setupUbuntuGPG(){
    for gpg in `ls $os/gpg`
    do
        sudo apt-key add $gpg
    done
}

function isCentos(){
    test -e /etc/redhat-release
}

function isUbuntu(){
    uname -a | grep ubuntu > /dev/null
}

function checkOS(){
    if isCentos; then
        os=centos
        return
    fi

    if isUbuntu; then
        os=ubuntu
        return
    fi

}

function run_on_centos(){
    setupCentosRepos
    setupDocker
    setupCentosPki
}

function run_on_ubuntu(){
    setupUbuntuSource
    setupDocker
    setupUbuntuGPG
}

function run(){
    checkOS
    run_on_$os

    if [ "$os" = "" ]; then
       echo "Not supported on this OS!"
    fi
}

run