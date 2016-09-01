#!/bin/bash
source ../.env
source ../venv/bin/activate

vagrant up

export ANSIBLE_HOST_KEY_CHECKING=False
ansible-playbook --user=ubuntu --inventory-file=./.vagrant/provisioners/ansible/inventory/vagrant_ansible_inventory ../ansible/build_wp.yml --skip-tags "prod"

sudo ssh -p 2222 -gNfL 80:localhost:80 ubuntu@localhost -i .vagrant/machines/default/virtualbox/private_key -o UserKnownHostsFile=/dev/null -o StrictHostKeyChecking=no
