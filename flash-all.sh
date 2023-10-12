#!/bin/bash

echo ""
echo "** If wiping data fails but the install is successful ignore the error **"
echo "** If the install fails please boot into TWRP and use Wipe/Format first **"
echo ""
platform-tools/fastboot -w

./flash-all-partitions-fastboot_SLOT_a.sh
./flash-all-partitions-fastboot_SLOT_b.sh
./flash-all-partitions-recovery-criticals_SLOT_a.sh
adb reboot bootloader
./flash-all-partitions-recovery-criticals_SLOT_b.sh
adb reboot
