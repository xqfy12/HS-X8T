#!/system/xbin/busybox sh
PRELOAD_DEST=/data/app
PRELOAD_FLAG=${PRELOAD_DEST}/exist
PRELOAD_SOURCE=/system/preloadapp

if [ ! -d ${PRELOAD_DEST} ]
then
	mkdir -p ${PRELOAD_DEST}
fi

if [ ! -f ${PRELOAD_FLAG} ]
then

	#first remove the all apk link and exist files
	rm  ${PRELOAD_DEST}/preload*.apk
	rm  ${PRELOAD_FLAG}
	echo ${PRELOAD_SOURCE}
	for FILE in `ls ${PRELOAD_SOURCE}`;do
	case "$FILE" in
	    *.apk)
	    ln -s ${PRELOAD_SOURCE}/$FILE ${PRELOAD_DEST}/preload_$FILE
	    ;;
	esac
	done
	sync
	echo "abcd" > ${PRELOAD_FLAG}
	chmod 777 ${PRELOAD_FLAG}
fi

