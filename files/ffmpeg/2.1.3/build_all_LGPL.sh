#!/bin/bash

function config {
#=======================================================================
echo -e "\n ==> configuring ndk...\n"
# -> set the NDK variable below
#=======================================================================

# config ndk
export NDK=${HOME}/Scaricati/android-ndk/android-ndk-r8e-linux-x86
SYSROOT=$NDK/platforms/android-14/arch-arm
TOOLCHAIN=`echo $NDK/toolchains/arm-linux-androideabi-4.7/prebuilt/linux-x86`
export PATH=$TOOLCHAIN/bin:$PATH

# FFmpeg version in use
FFMPEG="ffmpeg-2.1.3"

#present dir
BASE_DIR=`pwd`

#config arm build
BUILD_DIRarm="build_arm"
PREFIXarm=$BASE_DIR/$BUILD_DIRarm

#config arm non NEON build
BUILD_DIRarm_nN="build_arm"
PREFIXarm_nN=$BASE_DIR/$BUILD_DIRarm_nN

#config x86 build
BUILD_DIRx86="build_x86"
PREFIXx86=$BASE_DIR/$BUILD_DIRx86
PATH=$PATH:$NDK
TOOLCHAIN=$BASE_DIR/toolchain_x86
$NDK/build/tools/make-standalone-toolchain.sh --toolchain=x86-4.7 --arch=x86 --system=linux-x86 --platform=android-14 --install-dir=$TOOLCHAIN

#create builds dirs
mkdir -p $BUILD_DIRarm
mkdir -p $BUILD_DIRarm_nN
mkdir -p $BUILD_DIRx86

}

function extract {
#=======================================================================
echo -e "\n ==> extracting archives...\n"
#=======================================================================

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

#TODO check
cp -vrn jni/lame $SYSROOTx86/usr/include
cp -vn libs/x86/liblame.so $SYSROOTx86/usr/lib/libmp3lame.so

cd ..
}

function build_arm {
#=======================================================================
echo -e "\n ==> building FFmpeg for ARM...\n"
#=======================================================================
cd $FFMPEG

CFLAGS="-O3 -Wall -pipe -fasm"

FLAGS="--target-os=linux --cross-prefix=arm-linux-androideabi- --arch=arm \
	--sysroot=$SYSROOT \
	--enable-small \
	--disable-ffplay --disable-ffprobe --disable-ffserver \
	--disable-doc --disable-htmlpages --disable-manpages --disable-podpages --disable-txtpages \
	--enable-libmp3lame"

EXTRA_CFLAGS="-march=armv7-a -mfpu=neon -mfloat-abi=softfp -mvectorize-with-neon-quad"

rm -rf $PREFIXarm
mkdir -p $PREFIXarm

echo $FLAGS --prefix=$PREFIXarm --extra-cflags="$CFLAGS $EXTRA_CFLAGS" --extra-ldflags="$EXTRA_LDFLAGS" > $PREFIXarm/info.txt
./configure $FLAGS --prefix=$PREFIXarm --extra-cflags="$CFLAGS $EXTRA_CFLAGS" --extra-ldflags="$EXTRA_LDFLAGS" | tee $PREFIXarm/configuration.txt
[ $PIPESTATUS == 0 ] || exit 1

make clean
make -j4 || exit 1
make prefix=$PREFIXarm install || exit 1

cd ..
}

function build_arm_non_neon {
#=======================================================================
echo -e "\n ==> building FFmpeg for ARM (NEON disabled)...\n"
#=======================================================================
cd $FFMPEG

CFLAGS="-O3 -Wall -pipe -fasm"

FLAGS="--target-os=linux --cross-prefix=arm-linux-androideabi- --arch=arm --disable-neon\
	--sysroot=$SYSROOT \
	--enable-small \
	--disable-ffplay --disable-ffprobe --disable-ffserver \
	--disable-doc --disable-htmlpages --disable-manpages --disable-podpages --disable-txtpages \
	--enable-libmp3lame"

#EXTRA_CFLAGS="-march=armv7-a -mfpu=neon -mfloat-abi=softfp -mvectorize-with-neon-quad"
EXTRA_CFLAGS="-march=armv7-a -mfloat-abi=softfp -mfpu=vfpv3-d16 -I$PREFIXarm_nN/include -DANDROID"  # non-NEON version
# thanks to Jernej (Mavrik) from #ffmpeg on freenode

rm -rf $PREFIXarm_nN
mkdir -p $PREFIXarm_nN

echo $FLAGS --prefix=$PREFIXarm_nN --extra-cflags="$CFLAGS $EXTRA_CFLAGS" --extra-ldflags="$EXTRA_LDFLAGS" > $PREFIXarm_nN/info.txt
./configure $FLAGS --prefix=$PREFIXarm_nN --extra-cflags="$CFLAGS $EXTRA_CFLAGS" --extra-ldflags="$EXTRA_LDFLAGS" | tee $PREFIXarm_nN/configuration.txt
[ $PIPESTATUS == 0 ] || exit 1

make clean
make -j4 || exit 1
make prefix=$PREFIXarm_nN install || exit 1

cd ..
}

function build_x86 {
#=======================================================================
echo -e "\n ==> building FFmpeg for x86...\n"
#=======================================================================

cd $FFMPEG

rm -rf $PREFIXx86
mkdir -p $PREFIXx86

export PATH=$TOOLCHAIN/bin:$PATH
export CC="ccache i686-linux-android-gcc-4.7"
export LD=i686-linux-android-ld
export AR=i686-linux-android-ar

cp -rn ../liblame/jni/lame $TOOLCHAIN/sysroot/usr/include
cp -n ../liblame/libs/x86/liblame.so $TOOLCHAIN/sysroot/usr/lib/libmp3lame.so

FEATURES="--disable-demuxer=sbg --disable-demuxer=dts --disable-parser=dca --disable-decoder=dca --disable-decoder=svq3 \
\
--enable-libmp3lame --disable-devices --disable-filters --disable-protocols --enable-protocol=file"

./configure --target-os=linux --arch=x86 --cpu=i686 --cross-prefix=i686-linux-android- --enable-cross-compile $FEATURES --disable-symver --disable-doc --disable-htmlpages --disable-manpages --disable-podpages --disable-txtpages --disable-ffplay --disable-ffprobe --disable-ffserver --disable-amd3dnow --disable-amd3dnowext --disable-asm --enable-yasm --enable-pic --prefix=$PREFIXx86 --extra-cflags='-std=c99 -O3 -Wall -pipe -DANDROID -DNDEBUG  -march=atom -msse3 -ffast-math -mfpmath=sse' --extra-ldflags='-lm -lz -Wl,--no-undefined -Wl,-z,noexecstack' | tee $PREFIXx86/configuration.txt

make clean
make || exit 1
make install || exit 1

cd ..
}

function copy {
#=======================================================================
echo -e "\n ==> copying and renaming builds...\n"
#=======================================================================

mkdir $BASE_DIR/builds_LGPL

cp -v $BUILD_DIRarm/bin/ffmpeg 		builds_LGPL/ffmpeg_armv7a
cp -v $BUILD_DIRarm_nN/bin/ffmpeg 	builds_LGPL/ffmpeg_armv7a_non_neon
cp -v $BUILD_DIRx86/bin/ffmpeg 		builds_LGPL/ffmpeg_x86
}

function clean {
#=======================================================================
echo -e "\n ==> cleaning...\n"
#=======================================================================
rm -rf liblame
rm -rf $FFMPEG
rm -rf $BUILD_DIRarm
rm -rf $BUILD_DIRarm_nN
rm -rf $BUILD_DIRx86
rm -rf $TOOLCHAIN
}

#=======================================================================
config
extract
build_lame
build_arm
build_arm_non_neon
build_x86
copy
clean
#=======================================================================
