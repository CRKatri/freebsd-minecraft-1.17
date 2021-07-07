#!/usr/bin/env sh

echo 
echo Make sure you install required build dependencies by executing
echo pkg install git apache-ant dyncall
echo And runtime dependencies
echo pkg install glfw openal-soft
echo 
# (there might be more that I've missed)

ROOT=`pwd`
LIBS=${ROOT}/native-libs
mkdir -p ${LIBS} || exit 1

echo Cloning dependencies...

GIT_OPTIONS="--single-branch --depth 1"

# main repo
git clone -b 'freebsd-3.2.2-working' ${GIT_OPTIONS} git@github.com:CRKatri/lwjgl3.git

ln -sf /usr/local/lib/libopenal.so ${LIBS}/
ln -sf /usr/local/lib/libglfw.so ${LIBS}/

cd ${ROOT}/lwjgl3
ant -Dos.name=Linux -Dplatform=linux || exit 1
ant -Dos.name=Linux -Dplatform=linux release || exit 1
