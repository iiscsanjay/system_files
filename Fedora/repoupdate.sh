#!/bin/bash
PWD=`pwd`
PASS='dasSumitabha'
REPOPATH="/var/ftp/Repo"
cd $REPOPATH
for i in `ls $REPOPATH`
do
    echo $PASS | sudo -S rm -rf $i/repodata
done
echo "Start Downloading Repos for all"
echo $PASS | sudo -S reposync -r adobe-linux-i386
echo $PASS | sudo -S reposync -r google-chrome
echo $PASS | sudo -S reposync -r livna
echo $PASS | sudo -S reposync -r rpmfusion-free 
echo $PASS | sudo -S reposync -r rpmfusion-free-updates 
echo $PASS | sudo -S reposync -r rpmfusion-nonfree 
echo $PASS | sudo -S reposync -r rpmfusion-nonfree-updates 
echo $PASS | sudo -S reposync -r remi 
echo $PASS | sudo -S reposync -r rpm-sphere 
echo $PASS | sudo -S reposync -r texlive 
echo $PASS | sudo -S reposync -r virtualbox
echo $PASS | sudo -S reposync -r fedora 
echo $PASS | sudo -S reposync -r fedoraupdates 
echo "Start createing Repo for all Repository"
echo $PASS | sudo -S createrepo -v adobe-linux-i386
echo $PASS | sudo -S createrepo -v google-chrome
echo $PASS | sudo -S createrepo -v livna
echo $PASS | sudo -S createrepo -v rpmfusion-free 
echo $PASS | sudo -S createrepo -v rpmfusion-free-updates 
echo $PASS | sudo -S createrepo -v rpmfusion-nonfree 
echo $PASS | sudo -S createrepo -v rpmfusion-nonfree-updates 
echo $PASS | sudo -S createrepo -v remi 
echo $PASS | sudo -S createrepo -v rpm-sphere 
echo $PASS | sudo -S createrepo -v texlive 
echo $PASS | sudo -S createrepo -v virtualbox
echo $PASS | sudo -S createrepo -v fedora 
echo $PASS | sudo -S createrepo -v fedoraupdates 
cd $PWD
