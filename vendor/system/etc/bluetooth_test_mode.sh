#!/system/bin/sh
rmmod mbt8xxx
rmmod sd8xxx
rmmod mlan
echo "aa" > /sys/power/wake_lock
echo "1">/sys/class/rfkill/rfkill0/state
insmod /lib/modules/mlan.ko
insmod /lib/modules/sd8xxx.ko mfg_mode=1 fw_name=mrvl/sd8787_Ax.bin
insmod /lib/modules/mbt8xxx.ko
rfkill unblock bluetooth
ifconfig rndis0 192.168.1.10 up 
/system/bin/mfgbridge &

