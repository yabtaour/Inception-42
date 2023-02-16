FROM debian:buster

RUN apt-get update

RUN mkdir -p /run/php

RUN apt-get install -y nginx

RUN apt-get install -y openssl

RUN mkdir /etc/nginx/ssl

RUN openssl req -newkey rsa:4096 -x509 -sha256 -days 365 -nodes \
       -out /etc/nginx/ssl/1337.crt \
       -keyout /etc/nginx/ssl/1337.key \
       -subj "/C=MR/ST=Khouribga/L=Khouribga/O=1337School/OU=1337/CN=1337/"

RUN apt-get install wget php7.3 php7.3-fpm php-mysql -y

RUN sed -i 's/listen = \/run\/php\/php7.3-fpm.sock/listen = 9000/g' /etc/php/7.3/fpm/pool.d/www.conf

COPY ./nginx.conf /etc/nginx/

RUN mkdir -p /var/www/html

WORKDIR /var/www/html

COPY ./script.sh .

RUN chmod 777 ./script.sh

RUN wget https://www.adminer.org/static/download/4.8.1/adminer-4.8.1.php

ENTRYPOINT ./script.sh
