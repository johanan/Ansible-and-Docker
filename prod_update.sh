#!/bin/bash
source ./.env
source ./venv/bin/activate

ansible-playbook -i $1, ./ansible/update.yml --skip-tags "initial"
