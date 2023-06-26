up:
	docker-compose -f ./srcs/docker-compose.yml up --build
down:
	docker-compose  -f ./srcs/docker-compose.yml down

build:
	docker-compose -f ./srcs/docker-compose.yml build --no-cache

clean:
	docker-compose -f ./srcs/docker-compose.yml down -v
	-docker rmi $$(docker images -q)
	-rm -rf ~/data/db && rm -rf ~/data/wordpress

purge:
	-docker rm $$(docker ps -aq)
	-docker rmi $$(docker images -q)
	-docker volume rm $$(docker volume ls -q)
	-docker system prune -a -f

re: clean up