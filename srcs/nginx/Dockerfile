FROM debian:buster

RUN apt update -y && apt upgrade -y
RUN apt install nginx -y
RUN apt install openssl -y
RUN apt install vim -y
COPY cert.crt /etc/nginx/certs/cert.crt
COPY cert.key /etc/nginx/certs/cert.key
COPY nginx.conf /etc/nginx/sites-available/default
RUN apt install mariadb-client -y

CMD [ "nginx", "-g", "daemon off;"]
# CMD [ "tail", "-f" ]