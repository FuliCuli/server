#!/bin/bash
export ANSIBLE_FORCE_COLOR=true
export PYTHONUNBUFFERED=1
apt-get install language-pack-UTF-8 -y
apt-get install software-properties-common -y
apt-add-repository ppa:ansible/ansible
apt-get update
apt-get install ansible -y
cd /home/ansible
ansible-playbook -i hosts_dev dev.yml --connection=local