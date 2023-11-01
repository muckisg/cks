#!/bin/bash
# 2020-10-26 Version 0.9 Maurice "Mucki" Kemmann
# With kcbench 0.9 there are some changes to the original cks script:
# -n parameter was repplaced by -i fot interations
# The output chnged a bit, therefore the awk statement reads the 5th element instead of the 7th.

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
    kcbench -s $KERNEL -j $JOBS -i 1 | grep ^Run | awk '{print $5}' \
        |egrep -E -o '[0-9]*\.?[0-9]*' >> results.temp 
    JOBS=$(( $JOBS*2))
done

mv results.temp results$(date +_%Y-%m-%d_%H-%M).csv

echo "Fertig!"
exit 0
