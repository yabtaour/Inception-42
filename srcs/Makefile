create:
	mkdir /home/yabtaour/Desktop/volumes/wp_files && \
	mkdir /home/yabtaour/Desktop/volumes/wp_database

build:
	docker-compose build

up:
	docker-compose up

stop:
	docker-compose stop

start:
	docker-compose start

down:
	docker-compose down

clean:
	chmod 777 /home/yabtaour/Desktop/volumes/*
	rm -rf /home/yabtaour/Desktop/volumes/*

fclean: clean
	docker system prune -af
