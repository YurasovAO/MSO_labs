#!/bin/bash

if  [ -d $1 ]
then
    echo "Found directory"
    echo "Entering..."
    cd $1
    if ls -A | wc -l > /dev/null
    then
        echo "Current directory is not empty"
        echo "Creating file second.type"
        touch second.type
        echo "Gathering statistics..."
        ls -A1 > service_file
        file -f service_file > second.type
        rm -rf service_file
        echo "Completed"
    else
        echo "Currnet directory is empty"
    fi
else
    echo "No directory found"
fi



