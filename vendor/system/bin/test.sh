#!/bin/sh

# Program to save log to TF card

STORAGE_PATH=$1
PRODUCT_NAME=$2
PHONE_ID=$3

mkdir $STORAGE_PATH/$PRODUCT_NAME
logcat -vthreadtime -bsystem -bradio -bmain > $STORAGE_PATH/$PRODUCT_NAME/AP_$PHONE_ID.log
cat /proc/kmsg > $STORAGE_PATH/$PRODUCT_NAME/$PRODUCT_NAME_$PHONE_ID_kernel.log