#!/bin/sh

timestamp=$(date +'%s')
logfile=memory-$timestamp.log

while true;
do
    free -m | grep Mem: | awk '{print $3}' >> ./logs/$logfile;
    sleep 1;
done
