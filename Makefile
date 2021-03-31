DOCKER_COMPOSE := docker-compose -f docker-compose.yml
CLIENT := ${DOCKER_COMPOSE} run client

# Build
build:
	@${DOCKER_COMPOSE} build
# Start
start:
	@${DOCKER_COMPOSE} up -d
# Stop
stop:
	@${DOCKER_COMPOSE} down --remove-orphans -v
# Restart
restart:
	@${DOCKER_COMPOSE} restart
# CLIENT Shell
shell: 
	@${CLIENT} sh
# Log CLIENT
logs: 
	@${DOCKER_COMPOSE} logs -f client
