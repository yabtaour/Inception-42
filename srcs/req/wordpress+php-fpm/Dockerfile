FROM debian:buster

RUN	apt-get	update && apt-get install -y \
	wget \
   	 php7.3 \
   	 php7.3-fpm \ 
    	php-mysql

COPY ./www.conf /etc/php/7.3/fpm/pool.d/www.conf

COPY ./script.sh .

RUN chmod 777 ./script.sh

ENTRYPOINT ./script.sh
