#!/bin/bash
mkdir -p /var/www/html

chmod 777 /var/www/html

mkdir -p /run/php

wget https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar

chmod +x wp-cli.phar
mv wp-cli.phar /usr/local/bin/wp
wp core download  --path=/var/www/html --allow-root

wp config create --dbname=mydb --dbuser=db_master --dbpass=youness69 --dbhost=mariadb --path=/var/www/html --allow-root --skip-check

wp core install --path=/var/www/html  --allow-root --url="https://yabtaour.42.fr" --title="inception" --admin_user="yabtaour" --admin_password="yabtaour69" --admin_email="yabtaour@student.1337.ma" --skip-email

wp user create youness youness@gmail.com  --user_pass=youness69 --role=author --path=/var/www/html --allow-root

# wp theme install Zeever --activate --path=/var/www/html --allow-root

php-fpm7.3 --nodaemonize