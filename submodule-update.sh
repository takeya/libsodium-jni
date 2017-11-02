#!/bin/bash -ev

set -ev

. ./setenv.sh

#rm -rf libsodium

#git submodule init
#git submodule sync
#git submodule update --remote --merge
#git submodule update

pushd libsodium

git fetch && git checkout master
git reset --hard origin/master
git pull
popd
