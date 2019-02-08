COMPOSE = docker-compose

build:

prod:
	$(COMPOSE) run --rm app sh -c 'yarn && yarn build'

clean:
	rm -rf node_modules/
	rm -rf build/

serve: build
	$(COMPOSE) run --rm app
