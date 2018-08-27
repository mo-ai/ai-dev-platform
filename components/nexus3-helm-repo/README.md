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

    docker build -t nexus-repository-helm:0.0.2 .

    【note】In the Dockerfile, the common-compress should be removed before running the build.

4. Run as a Docker container

     docker run -d -p 8081:8081 --name nexus nexus-repository-helm:0.0.2

 [Currently, it is not work]

 So,

  (most) Permanent Install
  If you are trying to use the Helm plugin permanently, it likely makes more sense to do the following:

  Copy the bundle into <nexus_dir>/system/org/sonatype/nexus/plugins/nexus-repository-helm/0.0.2/nexus-repository-helm-0.0.2.jar

  Make the following additions marked with + to <nexus_dir>/system/org/sonatype/nexus/assemblies/nexus-core-feature/3.x.y/nexus-core-feature-3.x.y-features.xml

        <feature prerequisite="false" dependency="false">nexus-repository-rubygems</feature>
  +     <feature prerequisite="false" dependency="false">nexus-repository-helm</feature>
        <feature prerequisite="false" dependency="false">nexus-repository-gitlfs</feature>
    </feature>
  And

  + <feature name="nexus-repository-helm" description="org.sonatype.nexus.plugins:nexus-repository-helm" version="0.0.2">
  +     <details>org.sonatype.nexus.plugins:nexus-repository-helm</details>
  +     <bundle>mvn:org.sonatype.nexus.plugins/nexus-repository-helm/0.0.2</bundle>
  + </feature>
   </features>
  This will cause the plugin to be loaded and started with each startup of Nexus Repository.

     * Persistent Data
     There are two general approaches to handling persistent storage requirements with Docker. See Managing Data in Containers for additional information.

     Use a docker volume. Since docker volumes are persistent, a volume can be created specifically for this purpose. This is the recommended approach.
     $ docker volume create --name nexus-data
     $ docker run -d -p 8081:8081 --name nexus -v nexus-data:/nexus-data sonatype/nexus3
     Mount a host directory as the volume. This is not portable, as it relies on the directory existing with correct permissions on the host. However it can be useful in certain situations where this volume needs to be assigned to certain specific underlying storage.
     $ mkdir /some/dir/nexus-data && chown -R 200 /some/dir/nexus-data
     $ docker run -d -p 8081:8081 --name nexus -v /some/dir/nexus-data:/nexus-data sonatype/nexus3