TAG = $(shell echo `grep "TAG=" ./hub.config.env | sed 's/.*=//'`)
VERSION = $(shell echo `grep "VERSION=" ./hub.config.env | sed 's/.*=//'`)

build:
	docker build -t ws-typescript-development-webpack .


tag-it:
	docker tag $(TAG) willsonic/ws-typescript-development-webpack:$(VERSION)


hub-push:
	docker push willsonic/ws-typescript-development-webpack
