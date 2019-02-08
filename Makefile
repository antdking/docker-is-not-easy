UID ?= $(shell id -u)
COMPOSE = UID=$(UID) docker-compose


build:
	$(COMPOSE) build

clean:
	rm -rf node_modules/

serve: build
	$(COMPOSE) run -u $(UID) --rm app
