FROM debian:buster

RUN apt update ; apt upgrade -y; apt install mariadb-server -y;

COPY setup.sh /

RUN chmod +x /setup.sh

EXPOSE 3306

ENTRYPOINT ["bash", "/setup.sh", ";"]
