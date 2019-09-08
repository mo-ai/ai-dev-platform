# Deploy Rancher


#### Quick Start:
- (1)Clone Rancher Quickstart to a folder using git clone https://github.com/rancher/quickstart.

- (2)Go into the folder containing the Vagrantfile by executing cd quickstart/vagrant.

- (3)Optional: Edit config.yaml to:  
   Change the number of nodes and the memory allocations, if required. (node.count, node.cpus, node.memory)  
Change the password of the admin user for logging into Rancher. (default_password)  
To initiate the creation of the environment run, vagrant up.

- (5) Once provisioning finishes, go to https://172.22.101.101 in the browser. The default user/password is admin/admin.

####Manually
Before installing Rancher, you need to configure the docker correctly to use the docker registry installed
in step (1) . The file [/etc/docker/daemon.json](../etc/docker/daemon.json) is the docker configuration example,
which you can refer to make your docker configuration file and you should
put the file into the folder /etc/docker of your machine, and the file name should be daemon.json as well.