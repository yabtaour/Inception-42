FROM debian:buster

RUN apt-get -y update && apt-get -y upgrade
RUN apt-get -y install nginx
RUN apt-get -y install openssl
RUN mkdir /etc/nginx/ssl
RUN openssl req -newkey rsa:4096 -x509 -sha256 -days 365 -nodes \
       -out /etc/nginx/ssl/vbachele.crt \
       -keyout /etc/nginx/ssl/vbachele.key \
       -subj "/C=FR/ST=Paris/L=Paris/O=42 School/OU=vbachele/CN=vbachele/"
COPY ./index.html /usr/share/nginx/html
COPY ./nginx.conf /etc/nginx/
