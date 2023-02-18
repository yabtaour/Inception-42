FROM debian:buster

RUN apt-get update -y

RUN apt-get -y install nginx
RUN apt-get -y install openssl

RUN mkdir /etc/nginx/ssl
RUN openssl req -newkey rsa:4096 -x509 -sha256 -days 365 -nodes \
       -out /etc/nginx/ssl/1337.crt \
       -keyout /etc/nginx/ssl/1337.key \
       -subj "/C=MR/ST=Khouribga/L=Khouribga/O=1337School/OU=1337/CN=1337/"

COPY ./conf/nginx.conf /etc/nginx/

CMD ["nginx", "-g", "daemon off;"]
