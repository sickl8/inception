FROM debian:buster

RUN apt update -y && apt upgrade -y
RUN apt install mariadb-server -y
RUN apt install expect -y
RUN apt install vim -y
RUN apt install ufw -y
RUN ufw allow 3306
RUN apt install procps -y
COPY script.exp /script.exp
COPY entry.sh /entry.sh
COPY 50s.cnf /50s.cnf
COPY wp_db.sql /wp_db.sql

CMD [ "bash", "/entry.sh" ]
