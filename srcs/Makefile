up:
	./.mariadb.sh
	docker-compose up --build

all: up

start:
	docker-compose start

stop:
	docker-compose stop

down:
	docker-compose down

clean:
	sudo rm -rf /home/yabtaour/data/wp_files/* && sudo rm -rf /home/yabtaour/data/database/*

fclean: clean
	docker system prune -af
