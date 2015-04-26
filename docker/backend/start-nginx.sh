#!/bin/bash

for name in PHP_PORT_9000_TCP_ADDR
do
	eval value=\$$name
	sed -i "s|\${${name}}|${value}|g" /etc/nginx/conf.d/default.conf
done

nginx -g 'daemon off;'
