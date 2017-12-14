# roundshot
# See LICENSE file for copyright and license details

include config.mk

all: dirs busybox gnupg initramfs.cpio.bz2

dirs:
	mkdir -p build
	cd build && mkdir -p bin dev etc lib mnt/root proc root sys tmp usr var/run
	cp -a /dev/console build/dev
	cp -a /dev/null build/dev
	cp -a /dev/random build/dev
	cp -a /dev/tty build/dev
	cp -a /dev/urandom build/dev
	cp -ra skel/* build/

busybox:
ifeq ($(BUSYBOX),1)
	wget -c $(BUSYBOX_URL)
	tar xf $(shell basename $(BUSYBOX_URL))
	cp -f busybox.config $(shell basename -s .tar.bz2 $(BUSYBOX_URL))/.config
	export PATH="$(TC_PATH)/bin:$(PATH)" && \
		cd $(shell basename -s .tar.bz2 $(BUSYBOX_URL)) && \
		make -j9 ARCH=arm CROSS_COMPILE=$(TC_NAME) CFLAGS="-Os -static" LDFLAGS="-s -static" && \
		cp -f busybox $(PWD)/build/bin
endif

gnupg:
ifeq ($(GNUPG),1)
	wget -c $(GNUPG_URL)
	tar xf $(shell basename $(GNUPG_URL))
	export PATH="$(TC_PATH)/bin:$(PATH)" && \
		cd $(shell basename -s .tar.bz2 $(GNUPG_URL)) && \
		CC=$(TC_NAME)gcc CFLAGS="-Os -static" LDFLAGS="-s -static" \
		./configure \
			--disable-nls \
			--disable-rpath \
			--disable-selinux-support \
			--enable-minimal \
			--disable-card-support \
			--disable-agent-support \
			--disable-exec \
			--disable-photo-viewers \
			--disable-keyserver-helpers \
			--with-included-regex && \
		echo "all:" > doc/Makefile && \
		make -j9 && \
		cp -f g10/gpg $(PWD)/build/bin && \
		cp -f g10/gpgv $(PWD)/build/bin
endif

initramfs.cpio.bz2:
	cd build && \
		find . -print0 | cpio --null -ov --format=newc | bzip2 --best > $(PWD)/$@

clean:
	rm -rf build busybox-* gnupg-*

distclean: clean
	rm -f initramfs.cpio.bz2
