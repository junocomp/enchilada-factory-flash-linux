#!/bin/bash

fastboot flash aop_a images/aop.img &&
fastboot flash bluetooth_a images/bluetooth.img &&
fastboot flash boot_a images/boot.img &&
fastboot flash dsp_a images/dsp.img &&
fastboot flash dtbo_a images/dtbo.img &&
fastboot flash fw_4j1ed_a images/fw_4j1ed.img &&
fastboot flash fw_4u1ea_a images/fw_4u1ea.img &&
fastboot flash modem_a images/modem.img &&
fastboot flash oem_stanvbk images/oem_stanvbk.img &&
fastboot flash qupfw_a images/qupfw.img &&
fastboot flash storsec_a images/storsec.img &&
echo "Invalid sparse file format at header magic is not an error you need only to wait"
fastboot flash system_a images/system.img &&
fastboot flash vbmeta_a images/vbmeta.img &&
echo "Invalid sparse file format at header magic is not an error you need only to wait"
fastboot flash vendor_a images/vendor.img &&
fastboot flash LOGO_a images/LOGO.img
