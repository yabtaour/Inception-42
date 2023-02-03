FROM debian:buster

RUN apt-get update -y

RUN apt-get install -y wordpress && mv /usr/share/wordpress/* /var/www/html/

# RUN chmod 777 /usr/share/wordpress/

RUN apt-get install -y php7.3  php7.3-fpm

# COPY /usr/share/wordpress/ /var/www/html/

COPY ./wp-config.php /var/www/html/

RUN mkdir /run/php

RUN	sed -i 's/listen = \/run\/php\/php7.3-fpm.sock/listen = 9000/g' /etc/php/7.3/fpm/pool.d/www.conf 

ENTRYPOINT php-fpm7.3 --nodaemonize