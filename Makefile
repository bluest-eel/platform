VERSION = $(shell cat VERSION)
WS_RELAY_VERSION = 0.2.0

default: up

up:
	@VERSION=$(VERSION) RELAYD_VERSION=$(WS_RELAY_VERSION) \
	docker-compose -f ./docker/dev/compose.yml up

down:
	@VERSION=$(VERSION) RELAYD_VERSION=$(WS_RELAY_VERSION) \
	docker-compose -f ./docker/dev/compose.yml down

bash-db:
	@docker exec -it db1 bash

bash-msg:
	@docker exec -it messaging bash

sqlsh: NODE ?= db1
sqlsh:
	@echo '>> Connecting to db $(NODE) ...'
	@docker exec -it $(NODE) ./cockroach sql --insecure
