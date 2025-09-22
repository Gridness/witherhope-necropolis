.PHONY: start stop attach stop-force help update

start:
	docker compose up -d --build

stop:
	docker compose down

attach:
	docker attach paper-server-witherhope-necropolis
    
stop-force:
	docker compose down --rmi all --remove-orphans

pull:
	docker compose pull

update: stop pull start

help:
    @echo "Available commands: start, stop, attach, update, stop-force, help"
