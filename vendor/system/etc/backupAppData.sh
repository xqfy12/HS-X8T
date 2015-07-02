#!/system/bin/sh
setprop "persist.sys.shflag" 0
echo "starting call restore app shell"
storage=`getprop "persist.sys.hmct.primary.st"`
change=`getprop "ro.hmct.sdcard.change"`
echo $storage
echo $change
if [ "$change"x = "1"x ] && [ "$storage"x = "internal"x ]  
	then
		path="storage/sdcard1"
	else
		path="storage/sdcard0"
fi
echo $path
INDEX=1
echo $INDEX
while read line
do
	echo $line
	#pm install $line
  echo $line".tar"
  busybox tar -cf $path/backup/App/$line".tar" data/data/$line
  #tar -cf /data/$line"225.tar" /data/data/$line
  #cp /data/data/$line /mnt/sdcard/
	echo "Backup end"
done < $path/backup/backupAppData.txt
#done < /system/etc/backupAppData.txt

echo "Backup app file"
rm $path/backup/backupAppData.txt
setprop "persist.sys.shflag" 1
