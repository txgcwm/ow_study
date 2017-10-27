#!/bin/sh


MOUNT_PATH="/mnt/mmcblk0p1"
DEV_PATH="/dev/mmcblk0"

if [ -b "${DEV_PATH}" ] ;then
    if [ ! -d "${MOUNT_PATH}" ]; then
        /bin/mkdir -p ${MOUNT_PATH}
    fi
    
    /bin/mount -t vfat ${DEV_PATH} ${MOUNT_PATH}
fi
