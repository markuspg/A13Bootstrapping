BASEDIR := $(abspath $(dir $(lastword $(MAKEFILE_LIST))))

.PHONY: all

all: $(BASEDIR)/../bin/u-boot-sunxi-with-spl.bin

$(BASEDIR)/u-boot/.config: $(BASEDIR)/u-boot-config
	cp $< $@

$(BASEDIR)/../bin/u-boot-sunxi-with-spl.bin: $(BASEDIR)/u-boot/.config
	$(MAKE) -C u-boot ARCH=arm CROSS_COMPILE=arm-linux-gnueabihf-
	cp $(BASEDIR)/u-boot/u-boot-sunxi-with-spl.bin $@
