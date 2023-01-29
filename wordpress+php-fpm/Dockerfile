FROM debian:buster

RUN apt-get update -y

RUN apt-get install -y wordpress

RUN apt-get install -y php7.3  php7.3-fpm

COPY ./wp-config.php ./

COPY ./www.conf /etc/php/7.3/fpm/pool.d
