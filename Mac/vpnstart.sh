#!/bin/bash
PASS="dasSumitaba"
echo $PASS | sudo -S kextload /Library/Extensions/tap.kext
echo $PASS | sudo -S kextload /Library/Extensions/tun.kext
echo $PASS | sudo -S /opt/local/sbin/vpnc /etc/vpn.conf --local-port 0
#echo $PASS | sudo -S /opt/local/sbin/vpnc /etc/vpn.conf --local-port 50

