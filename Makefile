stop:
	@sudo docker-compose down
present: stop
	@sudo docker-compose up --no-deps --force-recreate --remove-orphans -d
