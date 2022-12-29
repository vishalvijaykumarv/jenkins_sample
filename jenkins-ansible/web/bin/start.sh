#!/bin/bash

/usr/sbin/sshd
mkdir /run/php-fpm
/usr/sbin/php-fpm -c /etc/php-fpm.conf
/usr/sbin/nginx -g 'daemon off;'

