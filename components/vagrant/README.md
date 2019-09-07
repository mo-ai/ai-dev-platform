#### Use Vagrant to create Virtual Machine

####
- (1) Install VirtualBox and Vagrant firstly
- (2) Run: vagrant plugin install vagrant-vbguest to install Guest additions for the box
- (3) Make directory for the VirtualBox and put the VagrantFile into it
- (4) cd the directory and run: vagrant up
- (5) after starting, edit sshd config by run: vi /etc/ssh/sshd_config to enable root login, 
  enable password, and enable public key