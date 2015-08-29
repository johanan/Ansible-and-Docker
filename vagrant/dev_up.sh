#!/bin/bash
source ../.env
source ../venv/bin/activate

vagrant up

export ANSIBLE_HOST_KEY_CHECKING=False
ansible-playbook --user=vagrant --inventory-file=./.vagrant/provisioners/ansible/inventory/vagrant_ansible_inventory ../ansible/build_wp.yml --skip-tags "prod"

sudo ssh -p 2222 -gNfL 80:localhost:80 vagrant@localhost -i .vagrant/machines/default/virtualbox/private_key -o UserKnownHostsFile=/dev/null -o StrictHostKeyChecking=no

ssh -p 2222 vagrant@localhost -i .vagrant/machines/default/virtualbox/private_key -o UserKnownHostsFile=/dev/null -o StrictHostKeyChecking=no << EOF
sudo su;
echo "define('WP_HOME','http://ejosh.local/de');
define('WP_SITEURL','http://ejosh.local/de');
define('COOKIE_DOMAIN', 'ejosh.local');
define('RELOCATE',true);" >> /var/www/html/ejosh/de/wp-config.php;
EOF
