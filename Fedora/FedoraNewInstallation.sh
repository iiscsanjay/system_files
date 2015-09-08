#!/bin/bash
pass=''
echo $pass | sudo -S dnf -y update
#disk utilities 
echo $pass | sudo -S dnf install -y gparted 
echo $pass | sudo -S dnf install -y unetbootin 
# desktop utilities
echo $pass | sudo -S dnf install -y wol 
echo $pass | sudo -S dnf install -y lm_sensors 
echo $pass | sudo -S dnf install -y conky 
#--uart utilities
echo $pass | sudo -S dnf install -y cutecom 
echo $pass | sudo -S dnf install -y gtkterm 
echo $pass | sudo -S dnf install -y minicom 
#--editor untilties
echo $pass | sudo -S dnf install -y vim 
echo $pass | sudo -S dnf install -y gvim 
echo $pass | sudo -S dnf install -y screen 
echo $pass | sudo -S dnf install -y byobu
echo $pass | sudo -S dnf install -y eog
echo $pass | sudo -S dnf install -y java
echo $pass | sudo -S dnf install -y evince
echo $pass | sudo -S dnf install -y tmux 
echo $pass | sudo -S dnf install -y guake 
echo $pass | sudo -S dnf install -y terminator 
echo $pass | sudo -S dnf install -y htop 
echo $pass | sudo -S dnf install -y python-devel
echo $pass | sudo -S dnf install -y python3-devel
echo $pass | sudo -S dnf install -y community-mysql-server.x86_64
echo $pass | sudo -S dnf install -y mysql-connector-python.noarch 
echo $pass | sudo -S dnf install -y mysql-connector-python3.noarch
#--Developer tools
echo $pass | sudo -S dnf install -y mdadm 
echo $pass | sudo -S dnf install -y opendchub 
echo $pass | sudo -S dnf install -y gcc
echo $pass | sudo -S dnf install -y nautilus-extensions 
#--system-requirement---
echo $pass | sudo -S dnf install -y redhat-lsb.x86_64
echo $pass | sudo -S dnf groupinstall -y "Administration Tools"
echo $pass | sudo -S dnf groupinstall -y "Development Tools"
echo $pass | sudo -S dnf groupinstall -y "C Development Tools and Libraries"
echo $pass | sudo -S dnf groupinstall -y "Engineering and Scientific"
echo $pass | sudo -S dnf groupinstall -y "Fedora Eclipse" 
echo $pass | sudo -S dnf install -y @kde-desktop 
echo $pass | sudo -S dnf install -y @mate-desktop 
echo $pass | sudo -S dnf install -y @cinnamon-desktop 
echo $pass | sudo -S dnf install -y @lxde-desktop 
echo $pass | sudo -S dnf install -y @xfce-desktop java 
