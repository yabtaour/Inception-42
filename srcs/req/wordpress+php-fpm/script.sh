#!/bin/bash
mkdir -p /var/www/html

#chown -R www-data:www-data /var/www/html/
groupadd www-pub
usermod -aG www-pub www-data

chmod 777 /var/www/html

mkdir -p /run/php

wget https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar

chmod +x wp-cli.phar
mv wp-cli.phar /usr/local/bin/wp
wp core download  --path=/var/www/html --allow-root
#groupadd 
wp config create --dbname=mydb --dbuser=db_master --dbpass=youness69 --dbhost=mariadb --path=/var/www/html --allow-root --skip-check --extra-php <<PHP
define('WP_REDIS_HOST', 'redis');
define('WP_REDIS_PORT', 6379);
define('WP_REDIS_DISABLED', false);
PHP

chown -R :www-pub /var/www/html

wp core install --path=/var/www/html  --allow-root --url="https://yabtaour.42.fr" --title="inception" --admin_user="yabtaour" --admin_password="yabtaour69" --admin_email="yabtaour@student.1337.ma" --skip-email

wp user create youness youness@gmail.com  --user_pass=youness69 --role=author --path=/var/www/html --allow-root

wp plugin install redis-cache --path=/var/www/html --allow-root
wp plugin activate redis-cache --path=/var/www/html --allow-root
wp redis enable --path=/var/www/html --allow-root

#wp theme install Zeever --activate --path=/var/www/html --allow-root

php-fpm7.3 --nodaemonize
