#!/bin/bash
cd ../../../..
cd system/core
cd system/core
git reset --hard && git clean -f -d
patch -p1 < ../../device/motorola/woods/patches/00-system_core.patch
git reset --hard && git clean -f -d
patch -p1 < ../../device/motorola/woods/patches/01-system_core.patch
cd ../..
cd hardware/interfaces
git reset --hard && git clean -f -d
patch -p1 < ../../device/motorola/woods/patches/02-hardware_interfaces.patch
cd ../..
cd system/core
git reset --hard && git clean -f -d
patch -p1 < ../../device/motorola/woods/patches/03-system_sepolicy.patch
cd ../..
