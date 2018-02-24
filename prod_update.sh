#!/bin/bash
source ./.env
source ./venv/bin/activate

ansible-playbook --inventory-file=inventory ./ansible/update.yml --skip-tags "initial"
