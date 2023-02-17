#!/bin/bash

touch ./req/mariadb/db.sql

echo "CREATE DATABASE IF NOT EXISTS mydb;" > ./req/mariadb/db.sql
echo "CREATE USER 'db_master' IDENTIFIED BY 'youness69';" >> ./req/mariadb/db.sql
echo "GRANT ALL PRIVILEGES ON mydb.* TO 'db_master';" >> ./req/mariadb/db.sql
echo "ALTER USER 'root'@'localhost' IDENTIFIED BY 'root69';" >> ./req/mariadb/db.sql
echo "FLUSH PRIVILEGES" >> ./req/mariadb/db.sql;
