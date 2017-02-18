THIS_MAKEFILE_PATH := $(word $(words $(MAKEFILE_LIST)),$(MAKEFILE_LIST))
THIS_DIR := $(shell cd $(dir $(THIS_MAKEFILE_PATH));pwd)

NPM ?= $(NODE) $(shell which npm)

# Build
build: install
  
dev:
	sass --style expanded --line-numbers --load-path ./lib/bulma src/scss/style.scss assets/css/style.css

prd:
	sass --style compressed --load-path ./lib/bulma src/scss/style.scss assets/css/style.css

# NPM
install:
	@$(NPM) install

.PHONY: run test
