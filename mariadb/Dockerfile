FROM debian:buster

RUN apt-get update -y

RUN apt-get install -y mariadb-server mariadb-client

COPY    ./test.sql .
COPY    ./script.sh .
RUN     chmod 777 ./script.sh

CMD ./script.sh
