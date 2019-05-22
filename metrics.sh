#!/bin/bash

if [ "$1" = cpu ]; then
    top -n 1| grep 'Cpu' | awk '{print "user "$2"\n" "system " $4"\n" "nice " $6"\n" "idle " $8"\n" "wait " $10"\n" "interrupt " $12"\n" "softirq " $14"\n" "steal " $16}'
elif [ "$1" = mem ]; then
    free | grep 'Mem' | awk '{print "total " $2"\n" "used " $3"\n" "free " $4"\n" "shared " $5}'
    free | grep 'Swap' | awk '{print "Swap total " $2"\n" "Swap used " $3"\n" "Swap free " $4}'
else
    echo "No parameter found or wrong parameter. Please specify parameter: 'cpu' or 'mem'. For example, ./metrics.sh cpu"
fi
