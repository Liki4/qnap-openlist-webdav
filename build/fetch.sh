#!/usr/bin/env bash

. ./OpenList/qpkg.cfg

mkdir -p out/tar
mkdir -p out/extracted

for ARCH in amd64 arm64; do
    echo "Fetching openlist_${ARCH}.tgz"
    wget "https://github.com/OpenListTeam/OpenList/releases/download/v${QPKG_VER}/openlist-linux-musl-${ARCH}.tar.gz" -O "out/tar/openlist_${ARCH}.tgz"
    tar xvzf "out/tar/openlist_${ARCH}.tgz" -C "out/extracted"
    mv "out/extracted/openlist" "out/openlist-${ARCH}"
done

rm -rf "out/tar"
rm -rf "out/extracted"
