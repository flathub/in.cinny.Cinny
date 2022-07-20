#!/bin/sh
version=$(node --version | sed "s/^v//")
nodedir=$(dirname "$(dirname "$(which node)")")
mkdir -p "flatpak-node/cache/node-gyp/$version"
ln -s "$nodedir/include" "flatpak-node/cache/node-gyp/$version/include"
echo 9 > "flatpak-node/cache/node-gyp/$version/installVersion"
