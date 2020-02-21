# !/bin/bash
# add fix to exercise5-server1 here
echo "Host server2
HostName 192.168.100.11
StrictHostKeyChecking no" >> /etc/ssh/ssh_config
service ssh restart
ssh-keygen -t rsa -f ~/.ssh/id_rsa -N ''
su vagrant -c "ssh-keygen -t rsa -f ~/.ssh/id_rsa -N ''"
mkdir /vagrant/ssh
cp ~/.ssh/id_rsa.pub /vagrant/ssh/`hostname`_root.pub
cp ~vagrant/.ssh/id_rsa.pub /vagrant/ssh/`hostname`_vagrant.pub