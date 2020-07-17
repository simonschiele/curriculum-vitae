PUBLISH=./publish
CV=simon_schiele_cv

LATEX_PATHS=TEXINPUTS=.//:$(TEXINPUTS)
LATEX_CMD=/usr/bin/pdflatex
LATEX_OPTS=-file-line-error -halt-on-error -interaction errorstopmode -output-format pdf -output-directory $(PUBLISH)

CONTAINER_CMD=docker
CONTAINER_NAME=latex-cv-build
CONTAINER_PARAMS=
SUDO_CMD=sudo

.PHONY: all test spell clean container containerbuild containerdebug build german english open cycle

all: clean build

test:
	@echo "Tests not implemented"

spell:
	ispell *.tex

clean:
	rm -rf $(PUBLISH)/*

container:
	make -C container

containerbuild: container
	$(SUDO_CMD) $(CONTAINER_CMD) run -v "`pwd`":/CV -it $(CONTAINER_PARAMS) $(CONTAINER_NAME):latest

containerdebug: container
	$(SUDO_CMD) $(CONTAINER_CMD) run -v "`pwd`":/CV -it $(CONTAINER_PARAMS) $(CONTAINER_NAME):latest /bin/bash

build: english german

english:
	$(LATEX_PATHS) $(LATEX_CMD) $(LATEX_OPTS) $(CV)_english.tex

german:
	$(LATEX_PATHS) $(LATEX_CMD) $(LATEX_OPTS) $(CV)_german.tex

open:
	evince $(PUBLISH)/*.pdf

cycle: test all open
