.PHONY: build shell

DOCKER_IMAGE := cloudaku/drone-v1

build:
	docker build -t "$(DOCKER_IMAGE)" .

shell: build
	docker run --rm -it $(DOCKER_IMAGE) bash