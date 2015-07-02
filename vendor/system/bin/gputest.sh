#!/system/bin/sh

am start -a android.intent.action.adtest
while :
do 
 /system/bin/adtest -i /system/bin/touch
done



