FROM debian:buster

RUN apt update ; apt upgrade -y ; apt install -y redis-server

COPY setup.sh /

CMD ["bash", "/setup.sh"]