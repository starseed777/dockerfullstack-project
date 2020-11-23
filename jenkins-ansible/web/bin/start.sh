#!/bin/bash

#starts ssh

/usr/sbin/sshd

#starts php processes in background

/usr/sbin/php-fpm -c /etc/php/fpm

#starts nginx daemon

nginx -g 'daemon off;'
