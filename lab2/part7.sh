#!/bin/sh

a=0
b=0

while [ $# -gt 1 ]
do
    if [ $# -gt 0 ]
    then
        a=$1
        shift
        b=$1
        echo $(( a + b )) | tee -a sh.result
    fi
done
