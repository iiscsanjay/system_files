#!/bin/bash
IFS=$'\n'
OneDrive="/Volumes/SATA/OneDrive"
GoogleDrive="/Volumes/SATA/GoogleDrive"
#-----Synchronize Data from Google Drive to One Drive 
Depth=`find "$GoogleDrive" | sed "s#$GoogleDrive##g" | awk -F'/' '{print NF}' | sort -n | tail -1`
RealDepth=$(($Depth -2))
for a in `seq 1 $RealDepth`;
    do
        for b in `find $GoogleDrive -d $a -type d`
            do
                tmp1=${b:26}
                gdir=$OneDrive/$tmp1
                if [ ! -d $gdir ]; then
                    mkdir $gdir
                fi
                echo $a : $gdir : $b
                for c in `find $b -d 1 -type f`
                do
                    tmp2=${c##/*/}
                    if [ ! -f $gdir/$tmp2 ]; then
                        cp $c $gdir/
                        echo $a : $c :$gdir/ 
                    fi
                done

            done
    done
