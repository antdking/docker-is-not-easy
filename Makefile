UID ?= $(shell id -u)
COMPOSE = UID=$(UID) docker-compose


build:
	$(COMPOSE) build

prod:
	$(COMPOSE) run --rm app sh -c 'yarn && yarn build'

clean:
	rm -rf node_modules/
	rm -rf build/

serve: build
	$(COMPOSE) up app
