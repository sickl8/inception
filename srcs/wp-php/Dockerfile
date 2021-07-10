FROM debian:buster

RUN apt update -y && apt upgrade -y
RUN apt install vim -y
RUN apt install wget -y
RUN wget https://wordpress.org/latest.tar.gz
RUN tar -xvf latest.tar.gz
# RUN mkdir -p /var/www/html/ && mv wordpress/* /var/www/html/ && rm -rf wordpress
RUN apt install php-fpm php -y
COPY conf /etc/php/7.3/fpm/pool.d/www.conf
RUN service php7.3-fpm start

CMD [ "php-fpm7.3", "-F", "-R" ]