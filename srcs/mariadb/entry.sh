#!/bin/bash

cp /50s.cnf /etc/mysql/mariadb.conf.d/50-server.cnf

if [ ! "$(ls -A /var/lib/mysql)" ]; then
	mysql_install_db
	service mysql start
	sleep 3
	expect /script.exp
	sleep 3
	mysql -uroot -p${MYSQL_NEW_ROOT_PASSWORD} -e "CREATE DATABASE ${MAINDB} /*\!40100 DEFAULT CHARACTER SET utf8 */;"
	mysql -uroot -p${MYSQL_NEW_ROOT_PASSWORD} -e "CREATE USER ${MAINDB}@localhost IDENTIFIED BY '${PASSWDDB}';"
	mysql -uroot -p${MYSQL_NEW_ROOT_PASSWORD} -e "CREATE USER ${MAINDB}@'%' IDENTIFIED BY '${PASSWDDB}';"
	mysql -uroot -p${MYSQL_NEW_ROOT_PASSWORD} -e "GRANT ALL PRIVILEGES ON ${MAINDB}.* TO '${MAINDB}'@'localhost';"
	mysql -uroot -p${MYSQL_NEW_ROOT_PASSWORD} -e "GRANT ALL PRIVILEGES ON ${MAINDB}.* TO '${MAINDB}'@'%';"
	mysql -uroot -p${MYSQL_NEW_ROOT_PASSWORD} -e "FLUSH PRIVILEGES;"
	mysql -uwordpress -p${PASSWDDB} wordpress < wp_db.sql
	killall -9 mysqld mysqld_safe
	cd '/usr' ; /usr/bin/mysqld_safe --datadir='/var/lib/mysql'
else
	#service mysql start
	#sleep 3
	killall -9 mysqld mysqld_safe 2>/dev/null
        cd '/usr' ; /usr/bin/mysqld_safe --datadir='/var/lib/mysql'
fi
