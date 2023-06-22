#!/bin/bash
sleep 10


sed -i -e 's/listen =.*/listen = 9000/' /etc/php/7.3/fpm/pool.d/www.conf
cd /var/www/html/wordpress
wp config create  --dbhost='mariadb' --dbname=$DB_NAME --dbuser=$DB_USER_NAME --dbpass=$DB_USER_PASSWD --allow-root --path=/var/www/html/wordpress --skip-check
wp core install --url=$URL --title="$TITLE" --admin_user=$ADMIN_USERNAME \
	--admin_password=$ADMIN_PASSWD --admin_email=$ADMIN_EMAIL --allow-root --path=/var/www/html/wordpress
wp user create "$USER" "$USER_EMAIL" --user_pass="$USER_PASSWD" --allow-root --path=/var/www/html/wordpress

mkdir -p /run/php

php-fpm7.3 -F