# roundshot - toolchain makefile
# See LICENSE file for copyright and license details

include config.mk

all: musl-cross-make $(TC_NAME)

musl-cross-make:
	git clone $(MUSL_CROSS_MAKE) musl-cross-make

arm-linux-musleabihf:
	cd $(shell basename $(MUSL_CROSS_MAKE)) && \
		echo "TARGET = $(TC_NAME)" > config.mak && \
		echo "OUTPUT = $(PWD)/$@" >> config.mak && \
		echo "COMMON_CONFIG += $(COMMON_CONFIG)" >> config.mak && \
		echo "GCC_CONFIG += $(GCC_CONFIG)" >> config.mak
	make -C $(shell basename $(MUSL_CROSS_MAKE)) -j9
	make -C $(shell basename $(MUSL_CROSS_MAKE)) -j9 install

clean:
	rm -rf $(TC_NAME)

distclean: clean
	rm -rf $(shell basename $(MUSL_CROSS_MAKE))
