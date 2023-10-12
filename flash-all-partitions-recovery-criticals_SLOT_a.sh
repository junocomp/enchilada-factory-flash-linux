#!/bin/bash

echo "Starting TWRP on the phone"
echo ""

fastboot boot ./twrp-3.3.1-0-enchilada.img

read -p "Wait for TWRP to start and then enter the main menu before continuing. Continue [Y/N]?" -n 1 -r
echo ""

if [[ $REPLY =~ ^[Yy]$ ]]
then
	sleep 10 &&
	adb push images/abl.img /sdcard &&
	adb shell dd if=/sdcard/abl.img of=/dev/block/bootdevice/by-name/abl_a &&
	adb push images/cmnlib.img /sdcard &&
	adb shell dd if=/sdcard/cmnlib.img of=/dev/block/bootdevice/by-name/cmnlib_a &&
	adb push images/cmnlib64.img /sdcard &&
	adb shell dd if=/sdcard/cmnlib64.img of=/dev/block/bootdevice/by-name/cmnlib64_a &&
	adb push images/devcfg.img /sdcard &&
	adb shell dd if=/sdcard/devcfg.img of=/dev/block/bootdevice/by-name/devcfg_a &&
	adb push images/hyp.img /sdcard &&
	adb shell dd if=/sdcard/hyp.img of=/dev/block/bootdevice/by-name/hyp_a &&
	adb push images/keymaster.img /sdcard &&
	adb shell dd if=/sdcard/keymaster.img of=/dev/block/bootdevice/by-name/keymaster_a &&
	adb push images/xbl.img /sdcard &&
	adb shell dd if=/sdcard/xbl.img of=/dev/block/bootdevice/by-name/xbl_a &&
	adb push images/xbl_config.img /sdcard &&
	adb shell dd if=/sdcard/xbl_config.img of=/dev/block/bootdevice/by-name/xbl_config_a
fi

