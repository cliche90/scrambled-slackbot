IMG=ghcr.io/cliche90/scrambled-slackbot
TAG=latest

.PHONY: help	
help:
	@egrep -h '\s##\s' $(MAKEFILE_LIST) | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m  %-30s\033[0m %s\n", $$1, $$2}'

.PHONY: all
all: build-image push-image ## build & push docker image

.PHONY: build-image 
build-image: ## build docker image
	cat ../github_docker_token | docker login https://ghcr.io -u snacky --password-stdin
	docker build -t ${IMG}:${TAG} .

.PHONY: push-image 
push-image:	## push docker image to registry
	docker push ${IMG}:${TAG} 
