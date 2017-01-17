BASEDIR := $(basebame CURDIR)

.PHONY: all

all: $(BASEDIR)/bin/u-boot-sunxi-with-spl.bin

$(BASEDIR)/bin/u-boot-sunxi-with-spl.bin:
	$(MAKE) -C u-boot ARCH=arm CROSS_COMPILE=arm-linux-gnueabihf- A13-OLinuXino_defconfig
	$(MAKE) -C u-boot ARCH=arm CROSS_COMPILE=arm-linux-gnueabihf-
	cp u-boot/u-boot-sunxi-with-spl.bin $@
