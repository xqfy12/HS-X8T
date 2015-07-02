#!/system/bin/sh

#move NVM_ROOT_DIR to init.rc so other applications and services also use it.
#export  NVM_ROOT_DIR="/data/Linux/Marvell/NVM"

setprop marvell.ril.ppp.enabled 0
setprop log.tag.Mms:transaction V
setprop log.tag.Mms:app V
setprop log.tag.Mms:threadcache V
setprop sys.usb.diagmodem 1

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
# $1 src file
# $2 dst file
function force_copy()
{
	if [ -f "${1}" ]; then
		cp ${1} ${2}
		chmod 666 ${2}
		chown system.system ${2}
		echo "cp: ${1} -> ${2}"
	fi
}
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

copy_if_not_exist "/system/etc/audio_basic_element.xml" "${NVM_ROOT_DIR}/audio_basic_element.xml"
copy_if_not_exist "/system/etc/audio_basic_element_A0.xml" "${NVM_ROOT_DIR}/audio_basic_element_A0.xml"
copy_if_not_exist "/system/etc/audio_effect_config.xml" "${NVM_ROOT_DIR}/audio_effect_config.xml"
copy_if_not_exist "/system/etc/audio_gain_calibration.xml" "${NVM_ROOT_DIR}/audio_gain_calibration.xml"
copy_if_not_exist "/system/etc/audio_avc.nvm" "${NVM_ROOT_DIR}/audio_avc.nvm"
copy_if_not_exist "/system/etc/audio_config.nvm" "${NVM_ROOT_DIR}/audio_config.nvm"
copy_if_not_exist "/system/etc/audio_ctm.nvm" "${NVM_ROOT_DIR}/audio_ctm.nvm"
copy_if_not_exist "/system/etc/audio_DualMic.nvm" "${NVM_ROOT_DIR}/audio_DualMic.nvm"
copy_if_not_exist "/system/etc/audio_ec.nvm" "${NVM_ROOT_DIR}/audio_ec.nvm"
copy_if_not_exist "/system/etc/audio_eq.nvm" "${NVM_ROOT_DIR}/audio_eq.nvm"
copy_if_not_exist "/system/etc/audio_gssp_config.nvm" "${NVM_ROOT_DIR}/audio_gssp_config.nvm"
copy_if_not_exist "/system/etc/audio_HLPF.nvm" "${NVM_ROOT_DIR}/audio_HLPF.nvm"
copy_if_not_exist "/system/etc/audio_misc.nvm" "${NVM_ROOT_DIR}/audio_misc.nvm"
copy_if_not_exist "/system/etc/audio_MSAmain.nvm" "${NVM_ROOT_DIR}/audio_MSAmain.nvm"
copy_if_not_exist "/system/etc/audio_ns.nvm" "${NVM_ROOT_DIR}/audio_ns.nvm"
copy_if_not_exist "/system/etc/EEHandlerConfig_Linux.nvm" "${NVM_ROOT_DIR}/EEHandlerConfig_Linux.nvm"
copy_if_not_exist "/system/etc/TTPCom_NRAM2_ABMM_WRITEABLE_DATA.gki" "${NVM_ROOT_DIR}/TTPCom_NRAM2_ABMM_WRITEABLE_DATA.gki"
copy_if_not_exist "/system/etc/firmware/mrvl/mfgbridge" "/data/mfgbridge"
copy_if_not_exist "/system/etc/firmware/mrvl/bridge_init.conf" "/data/bridge_init.conf"
copy_if_not_exist "/system/etc/Hsl_PM_Cfg.nvm" "${NVM_ROOT_DIR}/Hsl_PM_Cfg.nvm"

#mayangyang add bicr
mount -o ro,loop -t iso9660 /system/mobile_toolkit/Driver.iso mnt/cd-rom
#backup log files
/system/bin/backup_log.sh


/system/bin/run_composite.sh;

