BASEDIR := $(abspath $(dir $(lastword $(MAKEFILE_LIST))))

.PHONY: all

all: $(BASEDIR)/../bin/sun5i-a13-olinuxino.dtb \
    $(BASEDIR)/../bin/u-boot-sunxi-with-spl.bin \
    $(BASEDIR)/../bin/zImage

$(BASEDIR)/../bin/sun5i-a13-olinuxino.dtb: $(BASEDIR)/linux-stable/.config
	$(MAKE) -C linux-stable ARCH=arm CROSS_COMPILE=arm-linux-gnueabihf- dtbs
	cp $(BASEDIR)/linux-stable/arch/arm/boot/dts/sun5i-a13-olinuxino.dtb $@

$(BASEDIR)/u-boot/.config: $(BASEDIR)/u-boot-config
	cp $< $@

$(BASEDIR)/../bin/u-boot-sunxi-with-spl.bin: $(BASEDIR)/u-boot/.config
	$(MAKE) -C u-boot ARCH=arm CROSS_COMPILE=arm-linux-gnueabihf-
	cp $(BASEDIR)/u-boot/u-boot-sunxi-with-spl.bin $@

$(BASEDIR)/linux-stable/.config: $(BASEDIR)/linux-stable-config
	cp $< $@

$(BASEDIR)/../bin/zImage: $(BASEDIR)/linux-stable/.config
	$(MAKE) -C linux-stable ARCH=arm CROSS_COMPILE=arm-linux-gnueabihf- zImage
	cp $(BASEDIR)/linux-stable/arch/arm/boot/zImage $@
