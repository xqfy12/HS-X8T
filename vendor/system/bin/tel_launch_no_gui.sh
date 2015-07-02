#!/system/bin/sh

#file_name="$NVM_ROOT_DIR/COMCfg.csv"
#file_exist=`ls $file_name`
#case "$file_exist" in
#    $file_name)
#    echo "$NVM_ROOT_DIR/COMCfg.csv";
#    ;;
#    *)
#	cat /marvell/tel/configuration/COMCfg.csv > $NVM_ROOT_DIR/COMCfg.csv;
#	cat /marvell/tel/configuration/platform.nvm > $NVM_ROOT_DIR/platform.nvm;
#	cat /marvell/tel/configuration/afcDacTable.nvm > $NVM_ROOT_DIR/afcDacTable.nvm;
#    ;;
#esac

#check NVM partition on eMMC
mk_ext4_fs="/system/bin/make_ext4fs"

nvm_partition="mmcblk0p12"

nvm_partition_dev="/dev/block/$nvm_partition"
nvm_partition_fs="/sys/fs/ext4/$nvm_partition"

case "`cd $nvm_partition_fs; pwd`" in
	"$nvm_partition_fs")
		#already have file system, nothing need to do
		;;
	*)
		#format it as ext4 then mount it
		$mk_ext4_fs $nvm_partition_dev;
		sync;
		mount -o nosuid -o nodev -t ext4 $nvm_partition_dev $NVM_ROOT_DIR;
		;;
esac

#copy default calibration xml to /NVM/ if dest not exist.
src_file="/etc/audio_swvol_calibration_def.xml"
dst_file="${NVM_ROOT_DIR}/audio_swvol_calibration.xml"

if [ -f "${dst_file}" ]; then
	echo "existing ${dst_file}";
else
	if [ -f "${src_file}" ]; then
		cp ${src_file} ${dst_file}
		chmod 666 ${dst_file}
		chown system.system ${dst_file}
		echo "cp: ${src_file} -> ${dst_file}"
	fi
fi

setprop sys.telephony.default.loglevel 8
chown system:root /sys/class/power_supply/battery/capacity
chmod 0664 /sys/class/power_supply/battery/capacity

MODULE_DIR=/lib/modules
insmod $MODULE_DIR/msocketk.ko
insmod $MODULE_DIR/cploaddev.ko
#echo 1 > /sys/devices/system/cpu/cpu0/cp
insmod $MODULE_DIR/seh.ko
# load cp and mrd image and release cp
/system/bin/cploader

ret="$?"
case "$ret" in
	    "-1")
		rmmod seh
		rmmod cploaddev
		rmmod msocketk
		exit
       ;;
	    "1")
		rmmod seh
		rmmod cploaddev
		rmmod msocketk
		start nvm-aponly
		start diag-aponly
		insmod $MODULE_DIR/citty.ko
		start atcmdsrv-aponly
		exit
       ;;
       *)
       ;;
esac


insmod $MODULE_DIR/citty.ko
insmod $MODULE_DIR/cci_datastub.ko
insmod $MODULE_DIR/ccinetdev.ko
insmod $MODULE_DIR/gs_modem.ko
insmod $MODULE_DIR/cidatattydev.ko

# $1 src file
# $2 dst file
function copy_if_not_exist()
{
if [ -f "${2}" ]; then
	echo "existing ${2}";
else
	if [ -f "${1}" ]; then
		cp ${1} ${2}
		chmod 666 ${2}
		chown system.system ${2}
		echo "cp: ${1} -> ${2}"
	fi
fi
}

setprop sys.tools.enable 1

sync

/system/bin/eeh -M yes &
/system/bin/nvm &
/system/bin/diag &
/system/bin/atcmdsrv -M yes -T yes &
/system/bin/vcm &
