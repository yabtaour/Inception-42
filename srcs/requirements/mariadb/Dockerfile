FROM	debian:buster

RUN	apt-get update -y && apt-get install -y mariadb-server

COPY	./conf/db.sql .

RUN	sed -i 's/127.0.0.1/0.0.0.0/g' /etc/mysql/mariadb.conf.d/50-server.cnf

RUN	service mysql start && mysql < db.sql

ENTRYPOINT	mysqld_safe
