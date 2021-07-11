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
COPY answer.sh /answer.sh
COPY 50s.cnf /50s.cnf

CMD [ "bash", "/entry.sh" ]
