FROM debian:10
RUN apt update
RUN apt -y install apt install php libapache2-mod-php curl
RUN curl -s https://wordpress.org/latest.tar.gz | tar zxf -C /var/www/html
RUN a2enmod rewrite 
RUN a2dismod status

EXPOSE 80

