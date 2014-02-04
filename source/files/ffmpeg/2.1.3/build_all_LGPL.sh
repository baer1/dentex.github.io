#!/bin/bash

function config_ndk {
#=======================================================================
echo -e "\n ==> configuring ndk...\n"
# -> set the NDK variable below
#=======================================================================

export NDK=${HOME}/Scaricati/android-ndk/android-ndk-r8e-linux-x86

SYSROOT=$NDK/platforms/android-14/arch-arm
SYSROOTx86=$NDK/platforms/android-14/arch-x86

TOOLCHAIN=`echo $NDK/toolchains/arm-linux-androideabi-4.7/prebuilt/linux-x86`
TOOLCHAINx86=`echo $NDK/toolchains/x86-4.7/prebuilt/linux-x86`

export PATH=$TOOLCHAIN/bin:$PATH
export PATH=$TOOLCHAINx86/bin:$PATH
}

function extract {
#=======================================================================
echo -e "\n ==> extracting archives...\n"
#=======================================================================

# FFmpeg version in use
FFMPEG="ffmpeg-2.1.3"

tar xjf $FFMPEG.tar.bz2
tar xjf liblame.tar.bz2
}

function build_lame {
#=======================================================================
echo -e "\n ==> building lame...\n"
# lame built based on content from 
# https://github.com/intervigilium/liblame
#=======================================================================

cd liblame
$NDK/ndk-build

# copy libmp3lame files into android-ndk appropriate folders
# to let the ffmpeg configure script find them

cp -vrn jni/lame $SYSROOT/usr/include
cp -vn libs/armeabi-v7a/liblame.so $SYSROOT/usr/lib/libmp3lame.so

#cp -vrn jni/lame $SYSROOTx86/usr/include
#cp -vn libs/x86/liblame.so $SYSROOTx86/usr/lib/libmp3lame.so

cd ..
}

function config_ffmpeg_builds {
#=======================================================================
echo -e "\n ==> configuring FFmpeg builds...\n"
# FFmpeg builds adapting content from 
# http://bambuser.com/opensource
#=======================================================================

BASE_DIR=`pwd`
BUILD_DIR="build_arm"
BUILD_DIRx86="build_x86"

mkdir -p $BUILD_DIR
mkdir -p $BUILD_DIRx86

cd $FFMPEG
}

function build_arm {
#=======================================================================
echo -e "\n ==> building FFmpeg for ARM...\n"
#=======================================================================

DEST=$BASE_DIR/$BUILD_DIR

CFLAGS="-O3 -Wall -pipe -fpic -fasm"

FLAGS="--target-os=linux --cross-prefix=arm-linux-androideabi- --arch=arm \
	--sysroot=$SYSROOT \
	--enable-small \
	--disable-ffplay --disable-ffprobe --disable-ffserver \
	--disable-doc --disable-htmlpages --disable-manpages --disable-podpages --disable-txtpages \
	--enable-libmp3lame"

for version in neon armv7a; do

	case "$version" in
    	neon)
      		EXTRA_CFLAGS="-march=armv7-a -mfpu=neon -mfloat-abi=softfp -mvectorize-with-neon-quad"
      		;;
		armv7a)
			EXTRA_CFLAGS="-march=armv7-a -mfpu=vfpv3-d16 -mfloat-abi=softfp"
			;;

	esac
	PREFIX="$DEST/$version" && mkdir -p $PREFIX
	FLAGS="$FLAGS --prefix=$PREFIX"

	echo $FLAGS --extra-cflags="$CFLAGS $EXTRA_CFLAGS" --extra-ldflags="$EXTRA_LDFLAGS" > $PREFIX/info.txt
	./configure $FLAGS --extra-cflags="$CFLAGS $EXTRA_CFLAGS" --extra-ldflags="$EXTRA_LDFLAGS" | tee $PREFIX/configuration.txt
	[ $PIPESTATUS == 0 ] || exit 1

	make clean
	make -j4 || exit 1
	make prefix=$PREFIX install || exit 1

done
}

function build_x86 {
#=======================================================================
echo -e "\n ==> building FFmpeg for x86...\n"
#=======================================================================
PATH=$PATH:$NDK

PREFIX=$BASE_DIR/$BUILD_DIRx86
TOOLCHAIN=$BASE_DIR/toolchain_x86
$NDK/build/tools/make-standalone-toolchain.sh --toolchain=x86-4.7 --arch=x86 --system=linux-x86 --platform=android-14 --install-dir=$TOOLCHAIN

rm -rf $PREFIX

export PATH=$TOOLCHAIN/bin:$PATH
export CC="ccache i686-linux-android-gcc-4.7"
export LD=i686-linux-android-ld
export AR=i686-linux-android-ar

cp -rn ../liblame/jni/lame $TOOLCHAIN/sysroot/usr/include
cp -n ../liblame/libs/x86/liblame.so $TOOLCHAIN/sysroot/usr/lib/libmp3lame.so

FEATURES="--disable-demuxer=sbg --disable-demuxer=dts --disable-parser=dca --disable-decoder=dca --disable-decoder=svq3 \
\
--enable-libmp3lame --disable-devices --disable-filters --disable-protocols --enable-protocol=file"

./configure --target-os=linux --arch=x86 --cpu=i686 --cross-prefix=i686-linux-android- --enable-cross-compile $FEATURES --disable-symver --disable-doc --disable-htmlpages --disable-manpages --disable-podpages --disable-txtpages --disable-ffplay --disable-ffprobe --disable-ffserver --disable-amd3dnow --disable-amd3dnowext --disable-asm --enable-yasm --enable-pic --prefix=$PREFIX --extra-cflags='-std=c99 -O3 -Wall -fpic -pipe   -DANDROID -DNDEBUG  -march=atom -msse3 -ffast-math -mfpmath=sse' --extra-ldflags='-lm -lz -Wl,--no-undefined -Wl,-z,noexecstack'

make clean
make || exit 1
make install || exit 1
}

function copy {
cd ..
# copy builds
mkdir $BASE_DIR/builds_LGPL
cp -v $BUILD_DIR/armv7a/bin/ffmpeg builds_LGPL/ffmpeg_armv7a
cp -v $BUILD_DIR/neon/bin/ffmpeg builds_LGPL/ffmpeg_armv7a-neon
cp -v $BUILD_DIRx86/bin/ffmpeg builds_LGPL/ffmpeg_x86
}

function clean {
# clear dirs
rm -rf liblame
rm -rf $FFMPEG
rm -rf build_arm
rm -rf build_x86
rm -rf toolchain_x86
}

#=======================================================================
config_ndk
#extract
#build_lame
config_ffmpeg_builds
#build_arm
#build_x86
copy
#clean
#=======================================================================
