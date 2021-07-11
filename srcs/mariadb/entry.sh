#!/bin/sh

rm -rf /var/lib/mysql/*

/usr/bin/env

mysql_install_db

/usr/bin/env

service mysql start

# expect /script.exp

sh /answer.sh | mysql_secure_installation

/usr/bin/env

mysql -uroot -p${MYSQL_NEW_ROOT_PASSWORD} -e "CREATE DATABASE ${MAINDB} /*\!40100 DEFAULT CHARACTER SET utf8 */;"
mysql -uroot -p${MYSQL_NEW_ROOT_PASSWORD} -e "CREATE USER ${MAINDB}@localhost IDENTIFIED BY '${PASSWDDB}';"
mysql -uroot -p${MYSQL_NEW_ROOT_PASSWORD} -e "GRANT ALL PRIVILEGES ON ${MAINDB}.* TO '${MAINDB}'@'localhost';"
mysql -uroot -p${MYSQL_NEW_ROOT_PASSWORD} -e "FLUSH PRIVILEGES;"

# mysqld

tail -f