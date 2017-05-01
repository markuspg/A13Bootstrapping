fatload mmc 0 0x46000000 zimage
fatload mmc 0 0x49000000 sun5i-a13-olinuxino.dtb
setenv bootargs console=ttyS0,115200 earlyprintk root=/dev/mmcblk0p2 rootwait panic=10 init=/bin/systemd
bootz 0x46000000 - 0x49000000
