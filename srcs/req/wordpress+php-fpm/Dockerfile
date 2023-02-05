FROM debian:buster

RUN	apt-get	update && apt-get install -y \
	wget \
    php7.3 \
    php7.3-fpm \
    php7.3-mysql


COPY ./www.conf /etc/php/7.3/fpm/conf.d/


RUN mkdir /usr/share/wordpress

WORKDIR /usr/share/wordpress

COPY    ./wp-config.php .

COPY ./script.sh .

RUN chmod 777 ./script.sh

RUN ./script.sh

# RUN apt-get update -y

# RUN apt-get install -y wordpress && mv /usr/share/wordpress/* /var/www/html/

# RUN chmod 777 /usr/share/wordpress/

# RUN apt-get install -y php7.3  php7.3-fpm

# COPY /usr/share/wordpress/ /var/www/html/

# COPY ./wp-config.php /var/www/html/

# RUN mkdir /run/php

# RUN mv /var/www/html/wp-config-sample.php wp-config.php

# RUN sed -i "s/define('DB_NAME', 'database_name_here')/define('DB_NAME', 'mydb')/g" /var/www/html/wp-config.php && \
# 	sed -i "s/define('DB_USER', 'username_here')/define('DB_USER', 'db_master')/g" /var/www/html/wp-config.php && \
# 	sed -i "s/define('DB_HOST', 'localhost')/define('DB_HOST', 'mariadb')/g" /var/www/html/wp-config.php && \
# 	sed -i "s/define('DB_PASSWORD', 'password_here')/define('DB_PASSWORD', 'youness69')/g" /var/www/html/wp-config.php && \
# 	sed -i 's/listen = \/run\/php\/php7.3-fpm.sock/listen = 9000/g' /etc/php/7.3/fpm/pool.d/www.conf && \
# 	sed -i 's/listen.allowed_clients = 127.0.0.1/listen.allowed_clients/g' /etc/php/7.3/fpm/pool.d/www.conf

	# sed -i "s/define('DB_NAME', 'wordpress')/define('DB_NAME', 'mydb')/" /var/www/html/wp-config.php

# RUN	sed -i 's/listen = \/run\/php\/php7.3-fpm.sock/listen = 9000/g' /etc/php/7.3/fpm/pool.d/www.conf 

# ENTRYPOINT php-fpm7.3 --nodaemonize