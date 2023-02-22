up:
	../.mariadb.sh
	mv ../.env .
	docker-compose -f srcs/docker-compose.yml up --build 
	#srcs/docker-compose up --build

all: up

start:
	docker-compose -f srcs/docker-compose.yml start
	#srcs/docker-compose start

stop:
	docker-compose -f srcs/docker-compose.yml stop
	#srcs/docker-compose stop

down:
	docker-compose -f srcs/docker-compose.yml down
	#srcs/docker-compose down

clean:
	rm -rf Inception-42/srcs/requirements/mariadb/conf/db.sql
	mv .env ..
	sudo rm -rf /home/yabtaour/data/wp_files/* && sudo rm -rf /home/yabtaour/data/database/*

fclean: clean
	docker system prune -af
