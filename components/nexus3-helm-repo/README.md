# Nexus3 Helm Repo

Currently, only Jfrog's artifactory-pro has the support on helm repository, but it is not free.

Nexus also has a plugin support helm repository. But you need to build it manually.

0. Install maven
   wget http://repos.fedorapeople.org/repos/dchen/apache-maven/epel-apache-maven.repo -O /etc/yum.repos.d/epel-apache-maven.repo
   yum install apache-maven

1. Clone nexus-repository-helm
    git clone https://github.com/sonatype-nexus-community/nexus-repository-helm.git

2. Build

    mvn clean package

3. Build with Docker

    docker build -t nexus-repository-helm:0.0.1 .

4. Run as a Docker container

     docker run -d -p 8081:8081 --name nexus nexus-repository-helm:0.0.1