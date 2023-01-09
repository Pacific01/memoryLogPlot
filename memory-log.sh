#!/bin/sh

timestamp=$(date +'%s')
logfile=memory-$timestamp.log

if [ ! -z "$1" ]
then
    while true
    do
        memory=$(free -m | grep Mem: | awk '{print $3}')
        kb_read=$(iostat | grep $1 | awk '{print $2}')
        kb_writen=$(iostat | grep $1 | awk '{print $3}')
        echo $memory $kb_read $kb_writen >> ./logs/$logfile
        sleep 1
    done
else
    echo "device name required"
fi
