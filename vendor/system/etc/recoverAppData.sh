#!/system/bin/sh
setprop "persist.sys.shflag" 0
echo "starting call restore app shell"
storage=`getprop "persist.sys.hmct.primary.st"`
change=`getprop "ro.hmct.sdcard.change"`
echo $storage
echo $change
if [ "$change"x = "1"x ] && [ "$storage"x = "internal"x ]  
	then
		path="/storage/sdcard1"
	else
		path="/storage/sdcard0"
fi
echo $path
INDEX=1
echo $INDEX
while read line
do
	echo $line
	#pm install $line
  echo $line".tar" 
  uid=`ls -l /data/data/|busybox grep $line$|busybox awk '''{i=index($2,"_a");print 10000+substr($2,i+2);}'` 
  echo "$uid"
  if [ "$uid"x != x ]
	then
		busybox tar -xf $path/backup/App/$line".tar" -C $path/backup/App/
		busybox cp -R $path/backup/App/data/data/$line/ /data/data/
		busybox rm -rf $path/backup/App/data
		busybox chmod 777 /data/data/$line -R
		busybox chown $uid:$uid /data/data/$line/* -R
		busybox chown 1000:1000 /data/data/$line/lib 
		echo "install end"
	else
		echo "uid == null"
  fi
done < $path/backup/recoverAppData.txt

echo "Restore app file"
busybox rm $path/backup/recoverAppData.txt
setprop "persist.sys.shflag" 1