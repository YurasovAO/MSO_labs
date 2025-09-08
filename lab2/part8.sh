#!/bin/sh

MOUNTH=09
HOUR_OF_DAY=14
MINUTE_OF_DAY=44

#То есть вывод сообщения должен происходить 8 сентября в 13:35


while true
do
    CURRENT_MOUNTH=$(date --date="today" +%m)
    CURRENT_DAY_OF_WEEK_TODAY=$(date --date="today" +%u)
    CURRENT_HOUR_OF_DAY=$(date --date="today" +%H)
    CURRENT_MINUTE_OF_DAY=$(date --date="today" +%M)
    CURRENT_TIMEZONE=$(date --date="today" +%Z)


    if [ $CURRENT_MOUNTH -eq $MOUNTH ] && [ $CURRENT_DAY_OF_WEEK_TODAY -eq $DAY_OF_WEEK_TODAY ] && [ $CURRENT_HOUR_OF_DAY -eq $HOUR_OF_DAY ] && [ $CURRENT_MINUTE_OF_DAY -eq $MINUTE_OF_DAY ] && [ $CURRENT_TIMEZONE = $TIMEZONE ]
    then
        echo "It's 14:00 September the eigth"
        sleep 10
    fi
done
