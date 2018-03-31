.PHONY: all

all: A13

A13: build-image/build-base-image
	mkdir -p bin
	git submodule update --recursive
	make -C extlibs
	sudo build-image/build-base-image
