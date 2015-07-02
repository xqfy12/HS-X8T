#! /system/bin/sh
if [ -e /data/mtbf_ctrl ]
then
  cat /data/mtbf_ctrl > /sys/class/android_usb/android0/mtbf_ctrl
fi
