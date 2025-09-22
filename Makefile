.PHONY: start stop attach help update uninstall upgrade status

start:
	docker compose up -d --build

stop:
	docker compose down

attach:
	docker attach paper-server-witherhope-necropolis
    
uninstall:
	docker compose down --rmi all --remove-orphans

pull:
	docker compose pull

update: stop pull start

upgrade: update

status:
	green='\033[0;32m'
	yellow='\033[0;33m'
	reset='\033[0m'

	services=$(docker compose ps --services)
	all_healthy=true

	for service in $services; do
  		container_id=$(docker compose ps -q $service)
  		status=$(docker inspect --format='{{.State.Status}}' $container_id)
  		health=$(docker inspect --format='{{if .State.Health}}{{.State.Health.Status}}{{else}}none{{end}}' $container_id)

  		if [[ "$status" != "running" ]] || [[ "$health" != "healthy" ]]; then
    		echo "${yellow}Service $service is not healthy (status: $status, health: $health)${reset}"
    		all_healthy=false
  		fi
	done

	if [ "$all_healthy" = true ]; then
  		echo "✅ ${green}Witherhope Necropolis server is online${reset}"
	else
  		echo "⚠️ ${yellow}Some services are not healthy. Check status a bit later${reset}"
	fi

help:
    @echo "Available commands: start, stop, attach, update/upgrade, uninstall, status, help"
