all: build-image/build-base-image
	mkdir -p bin
	sudo build-image/build-base-image
