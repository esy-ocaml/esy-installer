.PHONY: install
install:
	mkdir -p $$cur__bin
	cp -r vendor-$$esy__platform/bin/* $$cur__bin/
