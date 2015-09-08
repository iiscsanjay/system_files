#!/bin/bash
pass='kallol'
echo $pass | sudo -S apt-get -y update
echo $pass | sudo -S apt-get -y upgrade
#disk tools
echo $pass | sudo -S apt-get install -y ia32-libs 
echo $pass | sudo -S apt-get install -y gparted 
echo $pass | sudo -S apt-get install -y unetbootin 
# desktop utilities
echo $pass | sudo -S apt-get install -y wakeonlan 
echo $pass | sudo -S apt-get install -y lm-sensors 
echo $pass | sudo -S apt-get install -y conky 
#--uart utilities
echo $pass | sudo -S apt-get install -y cutecom 
echo $pass | sudo -S apt-get install -y gtkterm 
echo $pass | sudo -S apt-get install -y minicom 
#--editor untilties
echo $pass | sudo -S apt-get install -y vim 
echo $pass | sudo -S apt-get install -y vim-gnome
echo $pass | sudo -S apt-get install -y vim-gtk
echo $pass | sudo -S apt-get install -y tmux 
echo $pass | sudo -S apt-get install -y guake 
echo $pass | sudo -S apt-get install -y terminator 
echo $pass | sudo -S apt-get install -y htop 
echo $pass | sudo -S apt-get install -y python-dev
echo $pass | sudo -S apt-get install -y python3-dev
echo $pass | sudo -S apt-get install -y byobu
echo $pass | sudo -S apt-get install -y screen 
echo $pass | sudo -S apt-get install -y eog 
echo $pass | sudo -S apt-get install -y ssh 
#--Developer tools
echo $pass | sudo -S apt-get install -y gcc
echo $pass | sudo -S apt-get install -y libcurl3
echo $pass | sudo -S apt-get install -y skype
echo $pass | sudo -S apt-get install -y smplayer
echo $pass | sudo -S apt-get install -y mplayer
echo $pass | sudo -S apt-get install -y mplayer2
echo $pass | sudo -S apt-get install -y texlive-full
echo $pass | sudo -S apt-get install -y gedit-latex-plugin

