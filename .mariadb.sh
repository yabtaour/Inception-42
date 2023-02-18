#!/bin/bash

echo "CREATE DATABASE IF NOT EXISTS mydb;" >srcs/requirements/mariadb/conf/db.sql
echo "CREATE USER 'db_master' IDENTIFIED BY 'youness69';" >> srcs/requirements/mariadb/conf/db.sql
echo "GRANT ALL PRIVILEGES ON mydb.* TO 'db_master';" >> srcs/requirements/mariadb/conf/db.sql
echo "ALTER USER 'root'@'localhost' IDENTIFIED BY 'root69';" >> srcs/requirements/mariadb/conf/db.sql
echo "FLUSH PRIVILEGES" >> srcs/requirements/mariadb/conf/db.sql;

