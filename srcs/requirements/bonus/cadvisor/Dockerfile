FROM debian:buster

RUN apt-get update && apt-get install -y wget

WORKDIR /usr/bin

RUN wget https://github.com/google/cadvisor/releases/download/v0.39.1/cadvisor

RUN chmod 777 cadvisor

CMD ["/usr/bin/cadvisor", "--port=8888", "--listen_ip=0.0.0.0", "--docker_only=true"]
