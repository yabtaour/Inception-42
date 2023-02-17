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
wp config create --dbname=$DB_NAME --dbuser=$DB_USER --dbpass=$DB_PASSWORD --dbhost=$DB_HOST --path=/var/www/html --allow-root --skip-check --extra-php <<PHP
define('WP_REDIS_HOST', 'redis');
define('WP_REDIS_PORT', 6379);
define('WP_REDIS_DISABLED', false);
PHP

chown -R :www-pub /var/www/html

wp core install --path=/var/www/html  --allow-root --url=$WP_URL --title=$WP_TITLE --admin_user=$WP_ADMIN --admin_password=$WP_PASSWORD --admin_email=$WP_ADMIN_EMAIL  --skip-email

wp user create $WP_USER $WP_USER_EMAIL  --user_pass=$WP_USER_PASSWORD --role=author --path=/var/www/html --allow-root

wp plugin install redis-cache --path=/var/www/html --allow-root
wp plugin activate redis-cache --path=/var/www/html --allow-root
wp redis enable --path=/var/www/html --allow-root

#wp theme install zeever --activate --path=/var/www/html --allow-root

php-fpm7.3 --nodaemonize
