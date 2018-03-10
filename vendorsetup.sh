#
for var in eng user userdebug; do
  add_lunch_combo lineage_woods-$var
done

# Patches
cd system/core
git apply -v ../../device/motorola/woods/patches/0001-system_core.patch
cd ../..
cd hardware/interfaces
git apply -v ../../device/motorola/woods/patches/0002-hardware_interfaces.patch
cd ../..


echo " ============ "
echo " ============ "
echo "PATCH DONE !!!"
echo ""
echo ""
