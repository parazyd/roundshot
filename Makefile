# roundshot
# See LICENSE file for copyright and license details

all:
	cd toolchain && make
	cd initramfs && make
	cd linux && make

dist: all
	mkdir -p dist
	cp -ra linux/build dist/linux-build
	cp -ra initramfs/initramfs.cpio.bz2 dist

clean:
	make -C toolchain clean
	make -C initramfs clean
	make -C linux clean

distclean:
	make -C toolchain distclean
	make -C initramfs distclean
	make -C linux distclean
