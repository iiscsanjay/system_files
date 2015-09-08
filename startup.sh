#!/bin/bash
PASS="dasSumitaba"
HOST=`uname`
Fedora=`uname -r`
LinuxMint=`uname -r`
hostname=`hostname`
Debian=`uname -r`
if [ "${HOST}" == "Darwin" ]; then
    echo $PASS | sudo -S sysctl -w kern.hostname=MacSara
    endif
    ssh-add ~/.ssh/nimrodel
    ssh-add ~/.ssh/anduin
    ssh-add ~/.ssh/cadl
    screen -dmS sanjayk /Users/sanjayk/Dropbox/git/FreeMacMemory.sh 
    /usr/bin/synergyc -f nimrodel

elif [ "${Fedora}" == "4.1.6-200.fc22.x86_64" ] || [ "${Fedora}" == "4.1.5-200.fc22.x86_64" ] || [ "${Fedora}" == "4.1.4-200.fc22.x86_64" ]  || [ "${Fedora}" == "4.1.2-200.fc22.x86_64" ]; then

    echo $PASS | sudo -S systemctl stop firewalld.service
    echo $PASS | sudo -S systemctl disable firewalld.service
    echo $PASS | sudo -S systemctl start rpcbind.service
    echo $PASS | sudo -S systemctl start nfs-server.service
    echo $PASS | sudo -S systemctl start nfs-lock.service
    echo $PASS | sudo -S systemctl start nfs-idmap.service
    echo $PASS | sudo -S systemctl enable rpcbind.service
    echo $PASS | sudo -S systemctl enable nfs-server.service
    echo $PASS | sudo -S systemctl enable nfs-lock.service
    echo $PASS | sudo -S systemctl enable nfs-idmap.service
    echo $PASS | sudo -S systemctl enable tor.service
    echo $PASS | sudo -S systemctl start  tor.service
    if [ "${hostname}" == "nimrodel" ]; then
        /usr/bin/screen -dmS sanjayk synergys -f -c /home/sanjayk/Dropbox/git/synergy.conf
    else
        /usr/bin/screen -dmS sanjayk synergyc -f nimrodel
    fi
    /usr/bin/opendchub 
    /usr/bin/guake
elif [ "${LinuxMint}" == "3.11.0-12-generic" ] || [ "${LinuxMint}" == "3.13.0-24-generic" ]; then
    echo $PASS | sudo -S ufw disable
    guake &
    synergys -f -c /home/sanjayk/Dropbox/git/synergy.conf
fi
#if [ `system_profiler SPSoftwareDataType | grep "Computer Name:" | awk '{print $3}'` == "MacSara.local" ]; then
