# AI-Dev-Platform
Deploying a platform for the development of AI

This is a project for deploying a development for AI, especially for the case of internal network.

So, generally, the environment is as following:
   - Firstly, One machine which can access internet to download the software,
      where a docker registry is installed as the pull cache mode.
      The folder 'registry' contains the configuration and the deployment script.
      You can run the registry deployment script 'run-registry.sh' to start
      the registry service in this machine.
      Generally, if you want to enable other mathine to access the Intenet,
      you can install a proxy in this machine, such as squid.
   -  Secondly, you need another machine to install Rancher. Before installing Rancher,
      you need to configure the docker correctly to use the docker registry installed
      in step (1) . The file /etc/docker/daemon.json is the docker configuration example,
      which you can refer to make your docker configuration file and you should
      put the file into the folder /etc/docker of your machine, and the file name
      should be daemon.json as well.
      