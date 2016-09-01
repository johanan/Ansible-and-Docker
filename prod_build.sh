#!/bin/bash
source ./.env
source ./venv/bin/activate

ansible-playbook -i $1, ./ansible/digital_ocean.yml
ansible-playbook -i $1, ./ansible/build_wp.yml
