#
for var in eng user userdebug; do
  add_lunch_combo lineage_woods-$var
done


echo
echo "Copying 'SkUserConfig.h' & 'SkUserConfigManual.h' to Core ..."
cp external/skia/include/config/SkUserConfig.h external/skia/include/core
echo ""
cp external/skia/include/config/SkUserConfigManual.h external/skia/include/core
echo
echo "...!DONE!"
echo