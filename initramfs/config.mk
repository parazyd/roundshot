# See LICENSE file for copyright and license details

BUSYBOX = 1
BUSYBOX_VERSION = 1.27.2
BUSYBOX_URL = https://busybox.net/downloads/busybox-$(BUSYBOX_VERSION).tar.bz2

GNUPG = 1
GNUPG_VERSION = 2.2.3-1
GNUPG_URL = https://deb.debian.org/debian/pool/main/g/gnupg2/gpgv-static_$(GNUPG_VERSION)_armhf.deb

TC_PATH = $(PWD)/../toolchain/arm-linux-musleabihf
TC_NAME = arm-linux-musleabihf-
