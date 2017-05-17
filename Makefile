.PHONY: install

PLATFORM := unknown

UNAME := $(shell uname -s)
ifeq ($(UNAME),Linux)
	PLATFORM := linux
endif
ifeq ($(UNAME),Darwin)
	PLATFORM := darwin
endif

install:
	mkdir -p $(cur__bin)
	cp -r vendor-$(PLATFORM)/bin/* $(cur__bin)/
