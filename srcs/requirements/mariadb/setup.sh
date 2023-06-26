#!/bin/bash

sed -i "s/127.0.0.1/0.0.0.0/g" /etc/mysql/mariadb.conf.d/50-server.cnf
sed -i "s|/run/mysqld/mysqld.sock|/var/run/mysqld/mysqld.sock|g"  /etc/mysql/mariadb.conf.d/50-server.cnf

service mysql start

mysql -e "CREATE DATABASE IF NOT EXISTS $DB_NAME;"
mysql -e "CREATE USER IF NOT EXISTS '$DB_USER_NAME'@'%' IDENTIFIED BY '$DB_USER_PASSWD';"
mysql -e "GRANT ALL PRIVILEGES ON $DB_NAME.* to '$DB_USER_NAME'@'%';"
mysql -e "FLUSH PRIVILEGES;"

mysqladmin shutdown

mysqld_safe