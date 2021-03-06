PASS="dasSumitaba"
HOST=`uname`
if [ "${HOST}" == "Darwin" ]; then
    alias d0="du -h -d 0"
    alias d1="du -h -d 1"
    alias d2="du -h -d 2"
    alias host='echo $PASS | sudo -S sysctl -w kern.hostname="MacSara"'
    alias mem="/Users/sanjayk/Dropbox/git/memReport3.py"
    alias sc="screen -dmS sanjayk synergyc -f nimrodel"
    alias eject="drutil tray eject"
    alias l1="gls -plh --color=auto --group-directories-first --sort=extension"
    alias iumount="echo $PASS | sudo -S diskutil umountDisk $@"
    alias ffdisk="diskutil list"
#---------to search and install through port command---///
    alias ys="port search"
    alias yi="echo $PASS | sudo -S port install"
    alias yu="echo $PASS | sudo -S port -d selfupdate"
    alias yo="echo $PASS | sudo -S port upgrade outdated"
    alias yc="echo $PASS | sudo -S port clean --all installed"
    alias yr="echo $PASS | sudo -S port uninstall $@"
    alias pip2i="echo $PASS | sudo -S pip-2.7 --proxy='http://sercsanjayk:fireisout5477@proxy.iisc.ernet.in:3128' install $@"
    alias pip3i="echo $PASS | sudo -S pip-3.4 --proxy='http://sercsanjayk:fireisout5477@proxy.iisc.ernet.in:3128' install $@"
    alias pip2s="echo $PASS | sudo -S pip-2.7 --proxy='http://sercsanjayk:fireisout5477@proxy.iisc.ernet.in:3128' search $@"
    alias pip3s="echo $PASS | sudo -S pip-3.4 --proxy='http://sercsanjayk:fireisout5477@proxy.iisc.ernet.in:3128' search $@"
    #----------application to open with commandline-----//
    alias pdf="/Applications/Adobe\ Reader.app/Contents/MacOS/AdobeReader"
    alias preview="/Applications/Preview.app/Contents/MacOS/Preview"
    alias vlc="/Applications/VLC.app/Contents/MacOS/VLC"
    alias mplayer="/Applications/MPlayerX.app/Contents/MacOS/MPlayerX"
    alias wakeUpAnduin="/opt/local/bin/wol 00:22:4d:ab:1e:07"
    alias wakeUpNimrodel="/opt/local/bin/wol 00:27:0E:03:F5:FE"
    alias wakeUpOldMail="/opt/local/bin/wol 00:02:a5:03:c5:5c"
    alias wakeUpNewMail="/opt/local/bin/wol 4c:72:b9:4e:ca:75"
    alias matlab="/Applications/MATLAB_R2014a.app/bin/matlab -c /Users/sanjayk/Documents/lic_standalone14.dat"
    alias macvim="/Applications/MacPorts/MacVim.app/Contents/MacOS/MacVim"
else 
    alias ls="ls $LS_OPTIONS"
    alias open="nautilus"
    alias ps="ps -aux"
    alias ys="dnf search"
    alias yi="echo $PASS | sudo -S dnf -y install"
    alias yr="echo $PASS | sudo -S dnf -y remove"
    alias yu="echo $PASS | sudo -S dnf -y update"
    alias install="echo $PASS | sudo -S dnf install $@"
    alias as="apt-cache search"
    alias ai="echo $PASS | sudo -S apt-get -y install"
    alias ar="echo $PASS | sudo -S apt-get -y remove"
    alias au="echo $PASS | sudo -S apt-get -y update"
    alias pip2i="echo $PASS | sudo -S pip2.7 --proxy='http://sercsanjayk:fireisout5477@proxy.iisc.ernet.in:3128' install $@"
    alias pip3i="echo $PASS | sudo -S pip3.4 --proxy='http://sercsanjayk:fireisout5477@proxy.iisc.ernet.in:3128' install $@"
    alias pip2s="echo $PASS | sudo -S pip2.7 --proxy='http://sercsanjayk:fireisout5477@proxy.iisc.ernet.in:3128' search $@"
    alias pip3s="echo $PASS | sudo -S pip3.4 --proxy='http://sercsanjayk:fireisout5477@proxy.iisc.ernet.in:3128' search $@"
    alias d0="du -h --max-depth=0"
    alias d1="du -h --max-depth=1"
    alias d2="du -h --max-depth=2"
    alias l1="ls -alh --group-directories-first --sort=extension"
    alias matlab="/opt/Matlab/bin/matlab -c /opt/Matlab/lic_standalone.dat"
    alias wakeUpOldMail="wol 00:02:a5:03:c5:5c"
    alias wakeUpNewMail="wol 4c:72:b9:4e:ca:75"
    alias wakeUpAnduin="wol 00:22:4d:ab:1e:07"
    alias wakeUpNimrodel="wol 00:27:0E:03:F5:FE"
fi
# Useful aliases for daily commands
alias 777="echo $PASS | sudo -S chmod -R 777 $@"
alias 755="echo $PASS | sudo -S chmod -R 755 $@"
alias ks="echo $PASS | sudo -S kill -9 $@"
alias c="clear"
alias vi="vim"
alias cim="vim"
alias bim="vim"
alias l="ls -lA"
alias ssh="ssh -X"
alias ll="ls -lhSv"
alias lsr="ls -lSv"
alias md="mkdir"
alias rd="rmdir"
alias cd..="cd .."
alias ..="cd .."
alias ...="cd ../.."
alias v="vim ~/.ssh/known_hosts"
alias fd="find . -name"
alias net='lsof -P -i -n | cut -f 1 -d " " |uniq'
alias start="screen -dmS sanjayk ~/Dropbox/git/startup.sh"

#---------to connect to cluster of iisc-------
alias dell="ssh secsjkr@10.16.28.52"
alias tesla="ssh secsjkr@10.16.28.49"
alias altrix="ssh secsjkr@10.16.28.20"
alias gpu="ssh sanjayk@10.112.17.13"
alias homer="ssh sanjayk@10.112.10.13"
alias erebor="ssh sanjayk@10.112.10.28"
alias macsara="ssh sanjayk@10.112.10.25"
alias nimrodel="ssh sanjayk@10.112.10.26"
alias anduin="ssh sanjayk@10.112.10.27"
alias erebor="ssh sanjayk@10.112.10.28"
alias rivendell="ssh sanjayk@10.112.10.20"
alias mirkwood="ssh sanjayk@10.112.10.18"
alias aditi="ssh cadlab3@10.114.1.44"
alias cad="ssh root@cadl.iisc.ernet.in"
alias scan="ssh cadlab@10.112.10.14"
alias taxila="ssh root@10.112.10.15"
alias pico="ssh sanjayk@10.112.10.16"
alias long="ssh sanjayk@10.112.10.17"
alias py3i="echo $PASS | sudo -S python3 setup.py install"
alias pyi="echo $PASS | sudo -S python setup.py install"
#------------------------------------------------------------------------------
alias HEX="ruby -e 'printf(\"0x%X\n\", ARGV[0])'"
alias DEC="ruby -e 'printf(\"%d\n\", ARGV[0])'"
alias BIN="ruby -e 'printf(\"%bb\n\", ARGV[0])'"
alias WORD="ruby -e 'printf(\"0x%04X\n\", ARGV[0])'"
#------------------- Security-----------------//
alias rm="rm -i"
alias grep="/usr/bin/grep $GREP_OPTIONS"
alias cp="cp -i"
alias mv="mv -i"
alias ln="ln -i"
