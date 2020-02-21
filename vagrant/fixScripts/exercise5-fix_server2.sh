#!/bin/bash
#add fix to exercise5-server2 here
echo "Host server1
HostName 192.168.100.10
StrictHostKeyChecking no" >> /etc/ssh/ssh_config
service ssh restart
ssh-keygen -t rsa -f ~/.ssh/id_rsa -N ''
su vagrant -c "ssh-keygen -t rsa -f ~/.ssh/id_rsa -N ''"
cat /vagrant/ssh/server1_root.pub >> ~/.ssh/authorized_keys
cat /vagrant/ssh/server1_vagrant.pub >> ~vagrant/.ssh/authorized_keys
apt-get install sshpass
sshpass -p vagrant ssh-copy-id root@server1
su vagrant -c "sshpass -p vagrant ssh-copy-id vagrant@server1"