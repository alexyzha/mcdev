.PHONY: all build run prune delete
IMAGE = mcdev
ROOT := $(shell pwd)

all: build run

build:
	docker build --platform linux/amd64 -t $(IMAGE) .

run:
	docker run --platform linux/amd64 -it --rm \
		-p 25565:25565 \
		-v "$$(pwd)/world":/srv/minecraft/world \
		-v "$$(pwd)/datapacks":/srv/minecraft/datapacks \
		$(IMAGE)

prune:
	docker container prune -f

delete:
	docker rmi -f $(IMAGE)