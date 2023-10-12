#!/bin/bash

fastboot flash aop_b images/aop.img &&
fastboot flash bluetooth_b images/bluetooth.img &&
fastboot flash boot_b images/boot.img &&
fastboot flash dsp_b images/dsp.img &&
fastboot flash dtbo_b images/dtbo.img &&
fastboot flash fw_4j1ed_b images/fw_4j1ed.img &&
fastboot flash fw_4u1ea_b images/fw_4u1ea.img &&
fastboot flash modem_b images/modem.img &&
fastboot flash oem_stanvbk images/oem_stanvbk.img &&
fastboot flash qupfw_b images/qupfw.img &&
fastboot flash storsec_b images/storsec.img &&
echo "Invalid sparse file format at header magic is not an error you need only to wait"
fastboot flash system_b images/system.img &&
fastboot flash vbmeta_b images/vbmeta.img &&
echo "Invalid sparse file format at header magic is not an error you need only to wait"
fastboot flash vendor_b images/vendor.img &&
fastboot flash LOGO_b images/LOGO.img

