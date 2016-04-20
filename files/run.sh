#!/bin/sh

sed -i "s/'server','name',.*/'server','name','${LDAP_SERVER_NAME}');/" /etc/phpldapadmin/config.php
sed -i "s/'server','host',.*/'server','host','${LDAP_SERVER_HOST}');/" /etc/phpldapadmin/config.php
sed -i "s/[^\$]*\$servers->setValue('server','port',.*/\$servers->setValue('server','port','${LDAP_SERVER_PORT}');/" /etc/phpldapadmin/config.php
sed -i "s/[^\$]*\$servers->setValue('server','base',.*/\$servers->setValue('server','base',array('${LDAP_SERVER_BASE_DN}'));/" /etc/phpldapadmin/config.php
sed -i "s/[^\$]*\$servers->setValue('login','bind_id',.*/\$servers->setValue('login','bind_id','${LDAP_SERVER_BIND_ID}');/" /etc/phpldapadmin/config.php

[ -f /run-pre.sh ] && /run-pre.sh

if [ ! -d /var/www ] ; then
  mkdir -p /var/www
  chown nginx:www-data /var/www
fi

# start php-fpm
mkdir -p /var/log/php-fpm
php-fpm

# start nginx
mkdir -p /var/log/nginx
mkdir -p /tmp/nginx
chown nginx /tmp/nginx
nginx
