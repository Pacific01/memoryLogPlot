#!/bin/sh

timestamp=$(date +'%s')
logfile=memory-$timestamp.log

if [ ! -z "$1" ]
then
    while true
    do
        tempfs=$(du /mnt/ram | awk '{print $1}')
        memory=$(free --kilo | grep Mem: | awk '{print $3}')
        kb_read_write=$(sar -d 1 1 | grep -m1 md0 | awk '{print $4 " " $5}')
        echo $memory $tempfs $kb_read_write >> ./logs/$logfile
        sleep 1
    done
else
    echo "device name required"
fi
