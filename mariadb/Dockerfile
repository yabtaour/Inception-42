FROM debian:buster

RUN apt-get update -y

RUN apt-get install -y mariadb-server

ENV MYSQL_DATABASE=my_database \
    MYSQL_USER=my_user \
    MYSQL_PASSWORD=my_password \
    MYSQL_ROOT_PASSWORD=my_root_password

