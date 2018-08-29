.PHONY: install

PLATFORM := cygwinNT10

UNAME := $(shell uname -s)
ifeq ($(UNAME),Linux)
	PLATFORM := linux
endif
ifeq ($(UNAME),Darwin)
	PLATFORM := darwin
endif
ifeq ($(UNAME),CYGWIN_NT-10.0)
	PLATFORM := cygwinNT10
endif

install:
	echo UNAME: $(UNAME)
	echo PLATFORM: $(PLATFORM)
	mkdir -p $(cur__bin)
	cp -r bin/esy-installer $(cur__bin)/esy-installer
	cp -r vendor-$(PLATFORM)/bin/* $(cur__bin)/opam-installer
