FROM debian:buster

RUN apt update ; apt upgrade -y; apt install -y nginx openssl;

RUN mkdir -p /var/www/html/wordpress ; rm /etc/nginx/nginx.conf

RUN openssl req -newkey rsa:2048 -x509 -days 365  -nodes -keyout /etc/ssl/private/mjlem.key -out /etc/ssl/certs/mjlem.crt -subj "/CN=mjlem.42.fr"

COPY nginx.conf /etc/nginx/

EXPOSE 443

ENTRYPOINT ["nginx", "-g", "daemon off;"]
