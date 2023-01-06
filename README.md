# buildroot_rpi3 64bit with qt5 mesa gpu driver
***
 buildroot base,config for raspberrypi 3b with qt5 and using opensource vc4 driver.
 qt5 is config and def backend eglfs,opengl es2

***
how to use:
 1. make sure you have correct compile environment(ARCH=aarch64,toolchian is 64bit)
 2. make abel_rpi3_64_defconfig
 3. make menuconfig 
     config your ex-toolchain path
     cp your kernel image file to path: output/images (image)
     cp your dtb file to path: output/images (bcm2710-rpi-3-b.dtb bcm2710-rpi-3-b-plus.dtb bcm2837-rpi-3-b.dtb)
     (above two cp file can come from after build rpi3 kernel)
 4. sd card boot file. after build success. in output/image/sdcard.img.

