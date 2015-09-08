#!/bin/sh
date=`/bin/date +%u`
#----Pradeep Your system password should be saved under PASS keyword in place of cadlab123
PASS='dasSumitabha'
/usr/bin/nice -n 5 echo $PASS | sudo -S /bin/cp /Users/sanjayk/.bashrc /Volumes/SATA/Users/sanjayk/Documents/BackUp/ 
/usr/bin/nice -n 5 echo $PASS | sudo -S /bin/cp /Users/sanjayk/.bash_profile /Volumes/SATA/Users/sanjayk/Documents/BackUp/ 
/usr/bin/nice -n 5 echo $PASS | sudo -S /bin/cp /Users/sanjayk/.vimrc /Volumes/SATA/Users/sanjayk/Documents/BackUp/ 
/usr/bin/nice -n 5 echo $PASS | sudo -S /bin/cp /Users/sanjayk/.wgetrc /Volumes/SATA/Users/sanjayk/Documents/BackUp/ 
/usr/bin/nice -n 5 echo $PASS | sudo -S /bin/cp /Users/sanjayk/.tmuxrc /Volumes/SATA/Users/sanjayk/Documents/BackUp/ 
/usr/bin/nice -n 5 echo $PASS | sudo -S /usr/bin/tar -pczvf /Users/sanjayk/Documents/BackUp/vim_$date.tar.gz  /Users/sanjayk/.vim
/usr/bin/nice -n 5 echo $PASS | sudo -S /usr/bin/tar -pczvf /Users/sanjayk/Documents/BackUp/dokuwiki_$date.tar.gz  /Library/WebServer/Documents/dokuwiki 
/usr/bin/nice -n 5 echo $PASS | sudo -S /usr/bin/tar -pczvf /Users/sanjayk/Documents/BackUp/websvn_$date.tar.gz  /Library/WebServer/Documents/websvn
/usr/bin/nice -n 5 echo $PASS | sudo -S /usr/bin/tar -pczvf /Users/sanjayk/Documents/BackUp/svn_$date.tar.gz  /Volumes/SATA/Users/svn
/usr/bin/nice -n 5 echo $PASS | sudo -S /usr/bin/tar -pczvf /Users/sanjayk/Documents/BackUp/etc_$date.tar.gz  /private/etc 
/usr/bin/nice -n 5 echo $PASS | sudo -S /usr/bin/tar -pczvf /Users/sanjayk/Documents/BackUp/documents_$date.tar.gz  /Library/Documents
#
dateFirst=`/bin/date +%d`
if [ "$dateFirst" -eq "01" ]; then
    dateofMonth=`/bin/date +%Y%m%d`
    /usr/bin/nice -n 5 echo $PASS | sudo -S /usr/bin/tar -pczvf /Users/sanjayk/Documents/BackUp/dokuwiki_$dateofMonth.tar.gz  /Library/WebServer/Documents/dokuwiki 
    /usr/bin/nice -n 5 echo $PASS | sudo -S /usr/bin/tar -pczvf /Users/sanjayk/Documents/BackUp/websvn_$dateofMonth.tar.gz  /Library/WebServer/Documents/websvn
    /usr/bin/nice -n 5 echo $PASS | sudo -S /usr/bin/tar -pczvf /Users/sanjayk/Documents/BackUp/svn_$dateofMonth.tar.gz  /Volumes/SATA/Users/svn
    /usr/bin/nice -n 5 echo $PASS | sudo -S /usr/bin/tar -pczvf /Users/sanjayk/Documents/BackUp/etc_$dateofMonth.tar.gz  /private/etc 
    /usr/bin/nice -n 5 echo $PASS | sudo -S /usr/bin/tar -pczvf /Users/sanjayk/Documents/BackUp/documents_$dateMonth.tar.gz  /Library/Documents
fi    
