#!/bin/bash
#original below
myen0=`ifconfig en0 | grep "inet " | grep -v 127.0.0.1 | awk '{print $2}'`

if [ "$myen0" != "" ]
then
    echo "Ethernet : $myen0"
    EthSession=1
else
    echo "Ethernet : INACTIVE"
    EthSession=0
fi
if [ "$EthSession" == "1" ]; then
    # Download / Upload Speed
    INTF0=en0
    SAMPLE_A=(`/usr/sbin/netstat -ib | awk "/$INTF0/"'{print $7" "$10; exit}'`);
    sleep 1;
    SAMPLE_B=(`/usr/sbin/netstat -ib | awk "/$INTF0/"'{print $7" "$10; exit}'`);
    BANDWIDTH_USAGE=(`echo "2k ${SAMPLE_B[0]} ${SAMPLE_A[0]} - 1024 / p" "${SAMPLE_B[1]} ${SAMPLE_A[1]} - 1024 / p" | dc`);
    echo -e "\tDownload Speed : \t ${BANDWIDTH_USAGE[0]} Kbps";
    echo -e "\tUpload Speed   : \t ${BANDWIDTH_USAGE[1]} Kbps";
    # Session data
    X=`/usr/sbin/netstat -ibn | awk "/$INTF0/"'{print $7; exit}'`
    if [ $X -ge 0 -a $X -le 999 ];
      then
      X=$(echo "$X B");
    
    elif [ $X -ge 1000 -a $X -le 999999 ];
      then
      X=$(awk -v X=$X 'BEGIN { print ((X) / 1000) }');
      X=$(echo "$X" | awk '{printf("%.2f", $1)}');
      X=$(echo "$X KB");
    
    elif [ $X -ge 1000000 -a $X -le 999999999 ];
      then
      X=$(awk -v X=$X 'BEGIN { print ((X) / 1000000) }');
      X=$(echo "$X" | awk '{printf("%.2f", $1)}');
      X=$(echo "$X MB");
    
    elif [ $X -ge 1000000000 -a $X -le 999999999999 ];
      then
      X=$(awk -v X=$X 'BEGIN { print ((X) / 1000000000) }');
      X=$(echo "$X" | awk '{printf("%.2f", $1)}');
      X=$(echo "$X GB");
    
    elif [ $X -ge 1000000000000  ];
      then
      X=$(awk -v X=$X 'BEGIN { print ((X) / 1000000000000) }');
      X=$(echo "$X" | awk '{printf("%.2f", $1)}');
      X=$(echo "$X TB");
    fi
    echo -e "Session Data: \t\t\t $X";
fi
myen1=`ifconfig en1 | grep "inet " | grep -v 127.0.0.1 | awk '{print $2}'`
if [ "myen1" != "" ]
then
    echo "AirPort  : $myen1"
    WifiSession=1
else
    echo "Airport  : INACTIVE"
    WifiSession=0
fi
if [ "$WifiSession" == "1" ]; then
    INTF1=en1
    SAMPLE_A=(`/usr/sbin/netstat -ib | awk "/$INTF1/"'{print $7" "$10; exit}'`);
    sleep 1;
    SAMPLE_B=(`/usr/sbin/netstat -ib | awk "/$INTF1/"'{print $7" "$10; exit}'`);
    BANDWIDTH_USAGE=(`echo "2k ${SAMPLE_B[0]} ${SAMPLE_A[0]} - 1024 / p" "${SAMPLE_B[1]} ${SAMPLE_A[1]} - 1024 / p" | dc`);
    echo -e "\tDownload Speed : \t ${BANDWIDTH_USAGE[0]} Kbps";
    echo -e "\tUpload Speed   : \t ${BANDWIDTH_USAGE[1]} Kbps";
    # Session data
    X=`/usr/sbin/netstat -ibn | awk "/$INTF1/"'{print $7; exit}'`
    if [ $X -ge 0 -a $X -le 999 ];
      then
      X=$(echo "$X B");
    
    elif [ $X -ge 1000 -a $X -le 999999 ];
      then
      X=$(awk -v X=$X 'BEGIN { print ((X) / 1000) }');
      X=$(echo "$X" | awk '{printf("%.2f", $1)}');
      X=$(echo "$X KB");
    
    elif [ $X -ge 1000000 -a $X -le 999999999 ];
      then
      X=$(awk -v X=$X 'BEGIN { print ((X) / 1000000) }');
      X=$(echo "$X" | awk '{printf("%.2f", $1)}');
      X=$(echo "$X MB");
    
    elif [ $X -ge 1000000000 -a $X -le 999999999999 ];
      then
      X=$(awk -v X=$X 'BEGIN { print ((X) / 1000000000) }');
      X=$(echo "$X" | awk '{printf("%.2f", $1)}');
      X=$(echo "$X GB");
    
    elif [ $X -ge 1000000000000  ];
      then
      X=$(awk -v X=$X 'BEGIN { print ((X) / 1000000000000) }');
      X=$(echo "$X" | awk '{printf("%.2f", $1)}');
      X=$(echo "$X TB");
    fi
    echo -e "Session Data: \t\t\t $X";
fi
