#!/bin/bash

#apt-get install wget php7.3 php7.3-fpm php7.3-mysql -y

#sed -i 's/listen = \/run\/php\/php7.3-fpm.sock/listen = 9000/g' /etc/php/7.3/fpm/pool.d/www.conf

#wget https://www.adminer.org/static/download/4.8.1/adminer-4.8.1.php

service nginx start

php-fpm7.3 --nodaemonize
