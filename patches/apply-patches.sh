#!/bin/bash
cd ../../../..
cd system/core
git apply -v ../../device/motorola/woods/patches/00-system_core.patch
git apply -v ../../device/motorola/woods/patches/01-system_core.patch
cd ../..
cd hardware/interfaces
git apply -v ../../device/motorola/woods/patches/02-hardware_interfaces.patch
cd ../..
cd system/core
git apply -v ../../device/motorola/woods/patches/03-system_sepolicy.patch
cd ../..
