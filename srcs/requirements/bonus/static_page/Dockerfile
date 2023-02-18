FROM debian:buster

RUN apt-get update -y

RUN apt-get install -y nginx

COPY ./tools/website/* /var/www/html/

COPY ./conf/nginx.conf /etc/nginx

CMD ["nginx", "-g","daemon off;"]
