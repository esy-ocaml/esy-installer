.PHONY: install

PLATFORM := unknown

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
	mkdir -p $(cur__bin)
	cp -r vendor-$(PLATFORM)/bin/* $(cur__bin)/
