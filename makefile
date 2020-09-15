all: run_build tail_logs
build: run_build
fromscratch: run_remove run_build
remove: run_remove

run_build:
	sudo docker-compose up --build -d

run_remove:
	sudo docker-compose down --rmi all
	sudo docker-compose rm --force

tail_logs:
	sudo docker-compose logs -f
