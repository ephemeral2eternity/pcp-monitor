#!/bin/sh

startTime='9:00'
endTime='10:00'
archiveFolder='/var/log/pcp/pmlogger/cache-01/'

if [ $# -gt 0 ]
then
        startTime=$1
fi

if [ $# -gt 1 ]
then
        endTime=$2
fi

curDate=$(date +%Y%m%d)
archiveFile="$archiveFolder$curDate.00.10"
fileName=$(echo "./data/$curDate-$startTime-$endTime.csv" | tr -d :)

echo "Dump metrics defined in metrics.list from $startTime to $endTime from $archiveFile to $fileName!!!"

pmdumptext -t 1sec -m -u -c metrics.list -f "%s" -S @$startTime -T@$endTime -d , -a $archiveFile > $fileName

echo "Dumping finished. Please check file $fileName!!!"
