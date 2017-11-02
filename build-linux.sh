#!/bin/bash -ev

. ./setenv.sh

./submodule-update.sh

./gradlew generateSWIGsource --full-stacktrace
./gradlew build --full-stacktrace
./build-kaliumjni.sh
./build-libsodiumjni.sh
