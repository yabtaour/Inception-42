FROM	debian:buster

RUN		apt-get update -y

RUN		apt-get install -y mariadb-server

COPY	./test.sql .

RUN		sed -i 's/127.0.0.1/0.0.0.0/g' /etc/mysql/mariadb.conf.d/50-server.cnf

RUN		service mysql start && mysql < test.sql

CMD		mysqld_safe