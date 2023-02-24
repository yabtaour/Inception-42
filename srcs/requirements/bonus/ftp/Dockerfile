FROM debian:buster

RUN apt-get update

RUN apt-get install vsftpd -y

COPY ./tools/script.sh .

RUN chmod 777 ./script.sh

ENTRYPOINT ["./script.sh"]
