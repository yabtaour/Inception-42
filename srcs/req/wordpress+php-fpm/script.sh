#!/bin/bash

wget https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar

    chmod +x wp-cli.phar
    mv wp-cli.phar /usr/local/bin/wp
    wp core download --allow-root

wp core install --allow-root --url="https://yabtaour.42.fr" --title="inception" --admin_user="yabtaour" --admin_password="yabtaour69" --admin_email="yabtaour@student.1337.ma" --skip-email

# wp config create --dbname=mydb --dbuser=db_master --dbpass=youness69 --dbhost=mariadb --path=/usr/share/wordpress --allow-root --skip-check --extra-php

wp user create youness youness@gmail.com  --user_pass=youness69 --role=author --allow-root

wp theme install Zeever --activate --allow-root

# php-fpm7.3 --nodaemonize