#!/usr/bin/env bash

mkdir -p ./OpenList/x86_64
cp ./out/openlist-amd64 ./OpenList/x86_64/openlist

mkdir -p ./OpenList/arm_64
cp ./out/openlist-arm64 ./OpenList/arm_64/openlist

/usr/share/QDK/bin/qbuild --root ./OpenList --build-arch x86_64 --build-dir ../
/usr/share/QDK/bin/qbuild --root ./OpenList --build-arch arm_64 --build-dir ../
