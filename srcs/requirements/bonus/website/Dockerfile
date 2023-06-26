FROM debian:buster

RUN apt update ; apt upgrade -y ; apt install -y nginx

COPY index.html /var/www/html

ENTRYPOINT [ "nginx", "-g", "daemon off;" ]