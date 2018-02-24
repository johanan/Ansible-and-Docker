#!/bin/bash
source ./.env
source ./venv/bin/activate

#ansible localhost --inventory-file=inventory -m command -a " ssh-keygen -lf <(ssh-keyscan {{inventory_hostname}} 2>/dev/null)"
ansible-playbook --inventory-file=inventory ./ansible/server.yml
ansible-playbook --inventory-file=inventory ./ansible/docker.yml
