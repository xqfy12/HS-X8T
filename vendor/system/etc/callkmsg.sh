#!/system/bin/sh

savelog()
{
    PRODUCT=`getprop ro.product.name`
    LOGDATE=`date +'%Y_%m_%d'`
    LOGTIME=`date +'%Y%m%d_%H%M%S'`
    LOGPATH=$STORAGEPATH/Debug_Log_$PRODUCT
    DATEPATH=$LOGPATH/$LOGDATE
    LOGFILE=$DATEPATH/Kmsg_$LOGTIME
    mkdir $LOGPATH
    mkdir $DATEPATH
    echo -e "\n\n\n\nKernel log begin!\n" | cat >> $LOGFILE
    cat < tmp | date >> $LOGFILE
    cat /proc/kmsg >> $LOGFILE
}

STORAGEPATH_IN=/storage/sdcard0
LOADPATH_IN=/storage/sdcard0
STORAGEPATH_SD=/storage/sdcard0
LOADPATH_SD=/storage/sdcard0
SD=`getprop persist.sys.hmct.primary.st`
case $SD in
    "sd")
        STORAGEPATH_IN=/storage/sdcard1
        LOADPATH_IN=/storage/sdcard1
        STORAGEPATH_SD=/storage/sdcard0
        LOADPATH_SD=/storage/sdcard0
    ;;
    "internal")
        STORAGEPATH_IN=/storage/sdcard0
        LOADPATH_IN=/storage/sdcard0
        STORAGEPATH_SD=/storage/sdcard1
        LOADPATH_SD=/storage/sdcard1
    ;;
esac

STORAGEPATH=$STORAGEPATH_SD
LOADPATH=$LOADPATH_SD
STORAGE=`getprop persist.sys.sdlog.storage`
case $STORAGE in
    "sd")
        STORAGEPATH=$STORAGEPATH_SD
        LOADPATH=$LOADPATH_SD
    ;;
    "internal")
        STORAGEPATH=$STORAGEPATH_IN
        LOADPATH=$LOADPATH_IN
    ;;
esac

while true
do
    if [ ! -f "/proc/kmsg" ]; then
        echo "not found /proc/kmsg"
        sleep 60
    else
        for i in `mount`
        do
            case $i in
                $LOADPATH)
                savelog
            esac
        done
    fi
    sleep 2
done