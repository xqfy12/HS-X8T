#!/system/bin/sh

savelog()
{
    PRODUCT=`getprop ro.product.name`
    LOGDATE=`date +'%Y_%m_%d'`
    LOGTIME=`date +'%Y%m%d_%H%M%S'`
    LOGPATH=$STORAGEPATH/Debug_Log_$PRODUCT
    DATEPATH=$LOGPATH/$LOGDATE
    LOGFILE=$DATEPATH/Tcp_$LOGTIME.cap
    mkdir $LOGPATH
    mkdir $DATEPATH
    #echo -e "\n\n\n\nTCP log begin!!!\n" | cat >> $LOGFILE
    tcpdump -i any -s 0 -w $LOGFILE
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
    for i in `mount`
    do
        case $i in
        $LOADPATH)
            savelog
        esac
    done
sleep 2
done