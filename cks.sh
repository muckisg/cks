#!/bin/bash

MAX_THREADS=$(grep -c ^processor /proc/cpuinfo)
JOBS=1

rm -f results.temp

if [ -z $1 ]
then
    echo "Give path to KERNEL!"
    echo $1
    exit 1
else
    KERNEL=$1
fi

echo "Threads,Time" >> results.temp

while [ $JOBS -le $MAX_THREADS ]
do
    echo "Path: ${KERNEL}"
    echo "Jobs: ${JOBS}"
    echo -n "$JOBS," >> results.temp
    kcbench -s $KERNEL -j $JOBS -n 1 | grep ^Run | awk '{print $7}' \
        |egrep -o '[0-9]*\.?[0-9]*' >> results.temp 
    JOBS=$(( $JOBS*2))
done

mv results.temp results$(date +_%Y-%m-%d_%H-%M).csv

echo "Fertig!"
exit 0