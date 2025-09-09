#!/bin/sh
START_TIME=$(date --date='today' +%M)
END_TIME=$(date --date='today' +%M)

while true
do
    END_TIME=$(date --date='today' +%M)
    if [ $(( $END_TIME - $START_TIME )) -eq 1 ]
    then
        $(shutdown -P now)
    fi
done
