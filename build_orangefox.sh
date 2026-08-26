#!/usr/bin/env bash
#
# OrangeFox Recovery Build Script for OnePlus 11R (udon / aston / CPH2487)
#

set -e

echo "=========================================================="
echo " Starting OrangeFox Recovery Build for OnePlus 11R (udon)"
echo "=========================================================="

# Setup Environment
export ALLOW_MISSING_DEPENDENCIES=true
export FOX_USE_TWRP_RECOVERY_IMAGE_BUILDER=1
export FOX_VIRTUAL_AB_DEVICE=1
export LC_ALL="C"

# Source build environment
source build/envsetup.sh

# Lunch target
lunch fox_udon-eng || lunch omni_udon-eng || lunch twrp_udon-eng

# Compile recovery image
mka recoveryimage -j$(nproc --all)

echo "=========================================================="
echo " OrangeFox Recovery Build Finished Successfully!"
echo " Output files located in: out/target/product/udon/"
echo "=========================================================="
