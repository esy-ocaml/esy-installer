.PHONY: install

PLATFORM := unknown

UNAME := $(shell uname -s)
ifeq ($(UNAME),Linux)
	PLATFORM := linux
endif
ifeq ($(UNAME),Darwin)
	PLATFORM := darwin
endif
ifneq (,$(findstring CYGWIN,$(UNAME)))
	PLATFORM := cygwinNT10
endif

install:
	mkdir -p $(cur__bin)
	cp -r bin/esy-installer $(cur__bin)/esy-installer
	cp -r vendor-$(PLATFORM)/bin/* $(cur__bin)/opam-installer
