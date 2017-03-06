TAG = $(shell echo `grep "TAG=" ./hub.config.env | sed 's/.*=//'`)
VERSION = $(shell echo `grep "VERSION=" ./hub.config.env | sed 's/.*=//'`)

build:
	docker build -t ws-ng2-development .


tag-it:
	docker tag $(TAG) willsonic/ws-ng2-development:$(VERSION)


hub-push:
	docker push willsonic/ws-ng2-development
