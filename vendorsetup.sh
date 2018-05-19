#
for var in eng user userdebug; do
  add_lunch_combo lineage_woods-$var
done

# Patches
echo "Applying Patches Automatically ..."
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

echo "  :( "
echo "==__==__=="

echo
echo "Copying 'SkUserConfig.h' & 'SkUserConfigManual.h' to Core ..."
cp external/skia/include/config/SkUserConfig.h external/skia/include/core
echo ""
cp external/skia/include/config/SkUserConfigManual.h external/skia/include/core
echo
echo "...!DONE!"
echo
