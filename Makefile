IMG=ghcr.io/cliche90/scrambled-slackbot
TAG=latest

build-image:
	cat ../github_docker_token | docker login https://ghcr.io -u snacky --password-stdin
	docker build -t ${IMG}:${TAG} .

push-image:
	docker push ${IMG}:${TAG} 