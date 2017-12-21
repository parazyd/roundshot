# roundshot
# See LICENSE file for copyright and license details

include config.mk

all: u-boot

u-boot:
	git clone $(U_BOOT_URL) -b $(U_BOOT_VERSION) $@

build-uboot:
	@export PATH="$(TC_PATH)/bin:$(PATH)" && \
		cd u-boot && \
		make ARCH=arm CROSS_COMPILE=$(TC_NAME) $(ARM_DEFCONFIG) && \
		make ARCH=arm CROSS_COMPILE=$(TC_NAME) -j9

install:
	@mkdir -p build
	cp -f u-boot/u-boot-sunxi-with-spl.bin build

clean:
	rm -rf u-boot

distclean: clean
	rm -rf build
