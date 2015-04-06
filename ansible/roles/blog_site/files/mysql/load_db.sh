#!/bin/bash
mysql -uroot -p$MYSQL_ROOT_PASSWORD < /tmp/wp_backup.sql && rm /tmp/wp_backup.sql 