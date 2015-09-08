#!/bin/bash
#To delete temperary files in Mac or Linux directory
IFS=$'\n'
SATA="/home/sanjayk/Music/"
pass="dasSumitaba"
echo $pass | sudo -S rm -rf  $SATA/.*
Depth=`find "$SATA" | sed "s#$SATA##g" | awk -F'/' '{print NF}' | sort -n | tail -1`
RealDepth=$(($Depth -2))
echo $RealDepth
for a in `seq 1 $RealDepth`;
    do
        for b in `find $SATA -depth $a -type d` # this works in Mac/Unix
#        for b in `find $SATA -maxdepth $a -type d` # This works in Linux
            do
                for c in `find $b -depth 1 -type f`
#                for c in `find $b -maxdepth 1 -type f`
                    do
                        tmp2=${c##/*/}
                        if [ $tmp2 == ".DS_Store" ]; then
                            echo $c
                            echo $pass | sudo -S rm -rf $c 
                        fi
                    done
            done
    done
