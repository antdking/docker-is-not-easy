COMPOSE = docker-compose

build:

clean:
	rm -rf node_modules/

serve: build
	$(COMPOSE) run --rm app
