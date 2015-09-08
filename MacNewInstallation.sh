#!/bin/bash
PASS='sumitabhaDAS'
echo $PASS | sudo -S port -d selfupdate
echo $PASS | sudo -S port upgrade outdated 
echo $PASS | sudo -S port clean --all installed
echo $PASS | sudo -S port install wget 
echo $PASS | sudo -S port install py27-ipython 
echo $PASS | sudo -S port install py34-ipython 
echo $PASS | sudo -S port install vpnc 
echo $PASS | sudo -S port install screen 
echo $PASS | sudo -S port install php
echo $PASS | sudo -S port install htop 
echo $PASS | sudo -S port install tmux 
echo $PASS | sudo -S port install vim 
echo $PASS | sudo -S port install MacVim
echo $PASS | sudo -S port install iTerm2
echo $PASS | sudo -S port install coreutils
echo $PASS | sudo -S port install python34
echo $PASS | sudo -S port install texlive 
echo $PASS | sudo -S port install texlive-latex
echo $PASS | sudo -S port install texlive-latex-extra
