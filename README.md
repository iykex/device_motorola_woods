#                                       Device Tree for Motorola E4 (8.0 , 3.18.35+)

The Moto E4 (codenamed _"woods"_) is a mid-range smartphone from Motorola.
![Moto E4](https://github.com/dev4wds/local_manifest/raw/los-14.1/device/motorola-moto-e4.jpg "Moto E4")

Basic   | Spec Sheet
-------:|:-------------------------
CPU     | Quad-core 1.3 GHz Cortex-A53
Chipset | MediaTek MT6737
GPU     | Mali-T720
Memory  | 2GB RAM
Shipped Android Version | 7.1
Storage | 16GB
MicroSD | Up to 64GB
Battery | Li-Pol 2800mAh battery
Display | 720 x 1280 pixels, 5.0 inches
Camera  | Main 8MP / Front 5MP, autofocus, LED flash

Copyright 2017 - The LineageOS Project.
Thanks to olegsvs, danielhk, Zormax, xcore995, SRT.

Credit : 
- @darklord4822

### Working:
- [x] Wifi
- [x] Sound
- [x] LiveDisplay
- [ ] Ril
- [ ] Codecs
- [ ] Camera, flashlight
- [x] Radio
- [ ] Fingerprint
- [ ] Bluetooth
- [x] Sensors
- [ ] Hotspot
- ...

### NOTE

with nano editor, edit these files by Commenting out the line :

in ( system/sepolicy/public ) domain.te [ line number : 227 on 15.0 & or 230 on 15.1 ]

in ( system/core/init ) init.cpp [ line number : 401 on 15.0 & or 434 on 15.1 ]

example :

Comment line : 230

nano +230 system/sepolicy/public/domain.te

Comment line : 434

nano +434 system/core/init/init.cpp

now ...,

Copy ```SkUserConfig.h``` & ```SkUserConfigManual.h``` to destination ```external/skia/include/core```  with below command  

```
cp external/skia/include/config/SkUserConfig.h external/skia/include/core
cp external/skia/include/config/SkUserConfigManual.h external/skia/include/core
```

