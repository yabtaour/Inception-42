up:
	mv ../.env .
	docker-compose -f srcs/docker-compose.yml up --build 

all: up

start:
	docker-compose -f srcs/docker-compose.yml start

stop:
	docker-compose -f srcs/docker-compose.yml stop

down:
	docker-compose -f srcs/docker-compose.yml down
	mv .env ..

clean:
	rm -rf Inception-42/srcs/requirements/mariadb/conf/db.sql
	mv .env ..
	sudo rm -rf /home/yabtaour/data/wp_files/* && sudo rm -rf /home/yabtaour/data/database/*

fclean: clean
	docker system prune -af
