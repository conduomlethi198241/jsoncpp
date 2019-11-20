#!/bin/bash

ndk-build APP_ABI=armeabi,armeabi-v7a,x86,arm64-v8a,x86_64 APP_PLATFORM=android-14 APP_BUILD_SCRIPT=./Android-jsoncpp.mk APP_PROJECT_PATH=./ NDK_LIBS_OUT=./shared-jsoncpp/libs APP_OPTIM=release APP_STL=gnustl_shared NDK_TOOLCHAIN_VERSION=4.9

cp -rf ./include ./shared-jsoncpp/includes