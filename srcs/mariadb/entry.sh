#!/bin/bash

rm -rf /var/lib/mysql/*

cp /50s.cnf /etc/mysql/mariadb.conf.d/50-server.cnf

/usr/bin/env

mysql_install_db

/usr/bin/env

service mysql start

sleep 3
expect /script.exp

#sh /answer.sh | mysql_secure_installation

sleep 3
/usr/bin/env


mysql -uroot -p${MYSQL_NEW_ROOT_PASSWORD} -e "CREATE DATABASE ${MAINDB} /*\!40100 DEFAULT CHARACTER SET utf8 */;"
mysql -uroot -p${MYSQL_NEW_ROOT_PASSWORD} -e "CREATE USER ${MAINDB}@localhost IDENTIFIED BY '${PASSWDDB}';"
mysql -uroot -p${MYSQL_NEW_ROOT_PASSWORD} -e "CREATE USER ${MAINDB}@'%' IDENTIFIED BY '${PASSWDDB}';"
mysql -uroot -p${MYSQL_NEW_ROOT_PASSWORD} -e "GRANT ALL PRIVILEGES ON ${MAINDB}.* TO '${MAINDB}'@'localhost';"
mysql -uroot -p${MYSQL_NEW_ROOT_PASSWORD} -e "GRANT ALL PRIVILEGES ON ${MAINDB}.* TO '${MAINDB}'@'%';"
mysql -uroot -p${MYSQL_NEW_ROOT_PASSWORD} -e "FLUSH PRIVILEGES;"

#mysqld

cd '/usr' ; /usr/bin/mysqld_safe --datadir='/var/lib/mysql'

tail -f
