#!/usr/bin/env bash

# Form https://devopsu.com/guides/ansible-ubuntu-debian.html

sudo apt-get update
apt-get install python-pip python-dev git -y
pip install PyYAML jinja2 paramiko
git clone git://github.com/ansible/ansible.git
cd ansible
make install
mkdir /etc/ansible

echo '[localhost]' > /etc/ansible/hosts
echo '127.0.0.1' >> /etc/ansible/hosts
su vagrant -c "ansible-playbook /vagrant/ansible-local.yml"
