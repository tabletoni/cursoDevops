FROM debian:10
MAINTAINER Toni Rubio <tabletoni@gmail.com>
LABEL name="Ejercicio creacion de Dockerfile para un WP sin MYSQL"

ENV DEBIAN_FRONTEND noninteractive

RUN set -eux ; \
    apt update ; \
	apt -y install ca-certificates apt-transport-https apache2 wget php php-mysql libapache2-mod-php ;  \
        wget -O- https://wordpress.org/latest.tar.gz | tar zx -C /var/www ; \
	rm -rf /var/www/html ; \
        mv /var/www/wordpress /var/www/html ; \
        chown -R www-data. /var/www/html ; \
        ln -sf /dev/stdout /var/log/apache2/access.log ; \
        ln -sf /dev/stderr /var/log/apache2/error.log ; \
        a2enmod rewrite &&  a2dismod status ; \
	apt -y remove wget ; \ 
	apt -y clean ; \
	rm -rf /var/lib/apt/lists/* ; \
EXPOSE 80 443

ENTRYPOINT [ "/usr/sbin/apachectl", "-D", "FOREGROUND" ]
