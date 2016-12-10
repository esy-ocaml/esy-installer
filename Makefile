platform ?= $(shell node -p 'process.platform')

.PHONY: install
install:
	mkdir -p $$cur__bin
	cp -r vendor-$(platform)/bin/* $$cur__bin/
