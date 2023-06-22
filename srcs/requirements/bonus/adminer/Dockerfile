FROM debian:buster

RUN apt update ; apt upgrade -y ; apt install -y adminer

EXPOSE 8080

CMD [ "php", "-S", "0.0.0.0:8080", "/etc/adminer/conf.php" ]
