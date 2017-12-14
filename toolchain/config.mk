# See LICENSE file for copyright and license details

# URL of musl-cross-make git repository
MUSL_CROSS_MAKE = https://github.com/richfelker/musl-cross-make

# Name of the toolchain to compile
TC_NAME = arm-linux-musleabihf

# Options for building the toolchain (used by musl-cross-make)
COMMON_CONFIG += --disable-nls
GCC_CONFIG += --enable-languages=c,c++
GCC_CONFIG += --disable-libquadmath --disable-decimal-float
GCC_CONFIG += --disable-multilib
