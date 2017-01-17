.PHONY: all

all: build-image/build-base-image
	mkdir -p bin
	make -C extlibs/u-boot mrproper
	make -C extlibs
	sudo build-image/build-base-image
