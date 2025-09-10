#!/bin/sh


SKRIPT_NAME="part"
TIME_INIT=$(shuf -i 5-10 -n 1)
START_TIME=$(date --date='today' +%M)
END_TIME=$(date --date='today' +%M)


$(rm -rf PID.s)

$(ps ax | grep -E ".*[0-9]\s/bin/sh\s./part" | head -n 3 | awk '{print $1}' >> PID.s)


while [ $(( END_TIME - START_TIME )) -ne $TIME_INIT ]
do
    END_TIME=$(date --date='today' +%M)
    sleep 1

done


while read line
do

    $(kill $line)

done < PID.s

$(rm -rf PID.s)


