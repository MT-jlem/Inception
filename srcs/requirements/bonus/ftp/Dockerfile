FROM debian:buster

RUN apt update ; apt upgrade ; apt install -y vsftpd

COPY setup.sh /

EXPOSE 21

RUN chmod +x setup.sh

ENTRYPOINT [ "bash", "setup.sh" ]