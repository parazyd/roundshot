# roundshot
# See LICENSE file for copyright and license details

all:
	cd toolchain && make
	cd initramfs && make
	cd linux && make
	cp -ra linux/build/lib squashfs/overlay
	cd squashfs && make

dist: all
	mkdir -p dist
	cp -fra linux/build dist/linux-build
	cp -fra initramfs/initramfs.cpio.bz2 dist
	cp -f squashfs/filesystem.squashfs dist

clean:
	make -C toolchain clean
	make -C initramfs clean
	make -C linux clean
	make -C squashfs clean

distclean:
	make -C toolchain distclean
	make -C initramfs distclean
	make -C linux distclean
	make -C squashfs distclean
