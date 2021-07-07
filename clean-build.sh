#!/usr/bin/env sh

echo Cleaning build...

cd lwjgl3/
ant -Dos.name=Linux -Dplatform=linux clean
cd ..
