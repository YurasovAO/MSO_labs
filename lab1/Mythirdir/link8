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
        touch second.rights
        echo "Gathering statistics..."
        ls -lA | awk 'NR > 1 {print $1, $3, $9}' > second.rights
        echo "Completed"
    else
        echo "Currnet directory is empty"
    fi
else
    echo "No directory found"
fi



