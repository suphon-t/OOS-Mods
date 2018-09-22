#!/usr/bin/env bash

rm -rf tmp
rm -rf OPSystemUI.apk
apktool b .
mkdir tmp
cd tmp
unzip -q ../../OPSystemUI.apk
cp ../build/apk/classes.dex .
zip -q -r -0 ../OPSystemUI.apk .
