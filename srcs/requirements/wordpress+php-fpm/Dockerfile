FROM debian:buster

RUN	apt-get	update && apt-get install -y \
	wget \
   	php7.3 \
   	php7.3-fpm \ 
    	php-mysql

RUN sed -i 's/listen = \/run\/php\/php7.3-fpm.sock/listen = 9000/g' /etc/php/7.3/fpm/pool.d/www.conf

COPY ./tools/script.sh .

RUN chmod 777 ./script.sh

ENTRYPOINT ./script.sh
