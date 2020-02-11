IMAGE_NAME = latex-cv-build
DOCKER_CMD = docker
SUDO_CMD = sudo

all: build

build:
	$(SUDO_CMD) $(DOCKER_CMD) build -t $(IMAGE_NAME) .

.PHONY: all build
