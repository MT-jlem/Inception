FROM debian:buster

RUN apt update ; apt upgrade -y ; apt install -y redis-server

COPY setup.sh /

ENTRYPOINT  ["bash", "/setup.sh"]