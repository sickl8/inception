FROM debian:buster

RUN apt update -y && apt upgrade -y
RUN apt install vim -y
RUN apt install wget -y
RUN wget https://wordpress.org/latest.tar.gz
RUN tar -xvf latest.tar.gz
RUN apt install php-fpm php -y
COPY conf /etc/php/7.3/fpm/pool.d/www.conf
RUN service php7.3-fpm start
RUN apt install mariadb-client -y
RUN apt install php-mysql -y
COPY entry.sh /entry.sh
COPY wp-config.php /wp-config.php
COPY gen_php.sh /gen_php.sh

CMD [ "sh", "/entry.sh" ]
