# See LICENSE file for copyright and license details

BUSYBOX = 1
BUSYBOX_VERSION = 1.27.2
BUSYBOX_URL = https://busybox.net/downloads/busybox-$(BUSYBOX_VERSION).tar.bz2

DROPBEAR = 0
DROPBEAR_VERSION = 2017.75
DROPBEAR_URL = https://matt.ucc.asn.au/dropbear/releases/dropbear-$(DROPBEAR_VERSION).tar.bz2

GNUPG = 1
GNUPG_VERSION = 1.4.22
GNUPG_URL = https://gnupg.org/ftp/gcrypt/gnupg/gnupg-$(GNUPG_VERSION).tar.bz2

TC_PATH = $(PWD)/../toolchain/arm-linux-musleabihf
TC_NAME = arm-linux-musleabihf-
