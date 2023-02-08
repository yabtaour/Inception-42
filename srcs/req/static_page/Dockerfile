FROM debian:buster

RUN apt-get update -y

RUN apt-get install -y nginx

COPY ./website/* /var/www/html/

COPY ./nginx.conf /etc/nginx

CMD ["nginx", "-g","daemon off;"]
