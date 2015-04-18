#!/bin/bash

for name in VARNISH_PORT_80_TCP_ADDR CADVISOR_PORT_8080_TCP_ADDR
do
	eval value=\$$name
	sed -i "s|\${${name}}|${value}|g" /etc/nginx/conf.d/default.conf
done

nginx -g 'daemon off;'
