FROM debian:buster

RUN apt update ; apt upgrade -y; apt install php php-fpm php-mysql wget -y;

RUN mkdir -p /var/www/html/wordpress

RUN wget https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar && \
	chmod 655 wp-cli.phar && mv wp-cli.phar /usr/local/bin/wp && wp core download --allow-root --path=/var/www/html/wordpress; wp cli update

COPY setup.sh /

EXPOSE 9000

ENTRYPOINT ["bash", "/setup.sh"]