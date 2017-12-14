# See LICENSE file for copyright and license details

#LINUX_TYPE = vanilla
LINUX_TYPE = grsec

LINUX_VERSION_VANILLA = linux-4.9.y
LINUX_URL_VANILLA = https://git.kernel.org/pub/scm/linux/kernel/git/stable/linux-stable

LINUX_VERSION_GRSEC = linux-4.9.x-unofficial_grsec
LINUX_URL_GRSEC = https://github.com/minipli/linux-unofficial_grsec

ARM_DTB = sun7i-a20-olinuxino-lime2.dtb

TC_PATH = $(PWD)/../toolchain/arm-linux-musleabihf
TC_NAME = arm-linux-musleabihf-
