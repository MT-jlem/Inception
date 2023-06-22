up:
	docker-compose -f ./srcs/docker-compose.yml up
down:
	docker-compose  -f ./srcs/docker-compose.yml down

clean:
	docker-compose  -f ./srcs/docker-compose.yml down -v
	-docker rmi $$(docker images -q)

re: clean up