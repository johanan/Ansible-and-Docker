#!/bin/bash
source ./.env
source ./venv/bin/activate

ansible-playbook -i $1, ./ansible/server.yml
ansible-playbook -i $1, ./ansible/docker.yml
