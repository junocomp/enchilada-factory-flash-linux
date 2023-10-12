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
	adb shell dd if=/sdcard/abl.img of=/dev/block/bootdevice/by-name/abl_b &&
	adb push images/cmnlib.img /sdcard &&
	adb shell dd if=/sdcard/cmnlib.img of=/dev/block/bootdevice/by-name/cmnlib_b &&
	adb push images/cmnlib64.img /sdcard &&
	adb shell dd if=/sdcard/cmnlib64.img of=/dev/block/bootdevice/by-name/cmnlib64_b &&
	adb push images/devcfg.img /sdcard &&
	adb shell dd if=/sdcard/devcfg.img of=/dev/block/bootdevice/by-name/devcfg_b &&
	adb push images/hyp.img /sdcard &&
	adb shell dd if=/sdcard/hyp.img of=/dev/block/bootdevice/by-name/hyp_b &&
	adb push images/keymaster.img /sdcard &&
	adb shell dd if=/sdcard/keymaster.img of=/dev/block/bootdevice/by-name/keymaster_b &&
	adb push images/xbl.img /sdcard &&
	adb shell dd if=/sdcard/xbl.img of=/dev/block/bootdevice/by-name/xbl_b &&
	adb push images/xbl_config.img /sdcard &&
	adb shell dd if=/sdcard/xbl_config.img of=/dev/block/bootdevice/by-name/xbl_config_b
fi
