pjName := cfx.story-view-seed

docker:
	docker run \
		--name ${pjName} \
		--rm \
		-ti \
		-p 3000:8000 \
		-v $$(pwd):/root/${pjName} \
		mooxe/node \
		/bin/bash

export PATH := ./node_modules/.bin:$(PATH)

include ./node_modules/cfx.simple-build-tool/maker/main.mk
include ./node_modules/cfx.simple-build-tool/maker/storybook.mk

start: server_storybook

