FROM debian:buster

RUN apt update -y && apt upgrade -y
RUN apt install mariadb-server -y
RUN apt install expect -y
RUN apt install vim -y
COPY script.exp /script.exp
COPY entry.sh /entry.sh
COPY answer.sh /answer.sh
RUN apt install ufw -y
RUN ufw allow 3306

CMD [ "sh", "/entry.sh" ]