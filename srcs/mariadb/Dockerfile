FROM debian:buster

RUN apt update -y && apt upgrade -y
RUN apt install mariadb-server -y
RUN apt install expect -y
COPY script.exp /script.exp
RUN service mysql start && expect /script.exp

CMD [ "mysqld" ]