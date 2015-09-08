#!/bin/bash
running=1
PASS="dasSumitaba"
trap '{echo "sigint"; running=0; }' SIGINT
while ((running)); do
    Report=`/usr/bin/python3 /Users/sanjayk/Dropbox/git/Mac/memReport3.py | awk '/Inactive Memory:/ {print $3}'`
    if [ $Report -ge 300 ] ; then 
        echo $PASS | sudo -S purge
        Report=`/usr/bin/python3 /Users/sanjayk/Dropbox/git/Mac/memReport3.py | awk '/Inactive Memory:/ {print $3}'`
    fi
    sleep 120
done
