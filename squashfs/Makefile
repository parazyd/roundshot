# roundshot
# See LICENSE file for copyright and license details

include config.mk

all: filesystem.squashfs

filesystem.squashfs:
	wget -c $(ROOTFS_URL)
	tar xf $(shell basename $(ROOTFS_URL))
	cp -frav overlay/* $(shell basename -s .tar.gz $(ROOTFS_URL))
	mksquashfs $(shell basename -s .tar.gz $(ROOTFS_URL)) $@ -comp xz

clean:
	rm -rf $(shell basename $(ROOTFS_URL)) $(shell basename -s .tar.gz $(ROOTFS_URL))

distclean: clean
	rm -f filesystem.squashfs
