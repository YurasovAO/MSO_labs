#!/bin/sh

SKRIPT_NAME="part8"
PID=0

if [ $(ps ax | grep -E ".*( sudo nohup )?$SKRIPT_NAME" | wc -l) -ge 2 ]
then
    echo "process found"
    #PID=$(ps ax | grep -E ".*( sudo nohup )?$SKRIPT_NAME" | head -n 1 | awk '{print $1}')
    PID=$(ps ax | grep -E ".*[0-9]\s/bin/sh\s./$SKRIPT_NAME" | head -n 1 | awk '{print $1}')
    echo "$PID"
else
    echo "process not found"
    exit
fi


while true
do
    if [ $(( $(cat comms.res 2>/dev/null | wc -l) % $DIGIT_FOR_LAB )) -eq 0 ] && [ -f ./comms.res ]
    then
        echo "Обнаружено превышение, остановка вывода"
        $(kill $PID)
        exit
    fi
done
