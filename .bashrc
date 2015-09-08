# .bashrc
# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi
if [ -f ~/.bash_aliases ]; then
        . ~/.bash_aliases
fi
#---------------Display settting for user and root environment-----------------
if [ "$BASH" ]; then
	if [ "`id -u`" -eq 0 ]; then
		# The root prompt is red.
		PS1='\[\033[0;31m\]\u@\h:\w >\[\033[0;37m\] '
	else
		PS1='\[\033[1;32m\]\u\[\033[0;32m\]@\[\033[1;32m\]\h\[\033[0;37m\]:\[\033[1;36m\]\w\[\033[0;37m\] > '
	fi
else
	if [ "`id -u`" -eq 0 ]; then
		PS1='# '
	else
		PS1='$ '
	fi
fi
export PS1
#------------------------------------------------------------------------------
PASS="dasSumitaba"
HOST=`uname`
if [ "${HOST}" == "Darwin" ]; then
    export CLICOLOR='true'
    export LC_ALL="en_US" 
    export LSCOLORS=GxBxCxDxBxegedabagacad
    #export LSCOLORS=exfxcxdxbxegedabagacad
    #export LSCOLORS=gxfxcxdxbxegedabagacad 
    #export LSCOLORS=ExFxCxDxBxegedabagacad 
    #export LSCOLORS=HxFxCxDxBxegedabagacad
    export PATH="/Library/Frameworks/Python.framework/Versions/3.3/bin:$PATH"
    export PATH="/home/sanjayk/.bin:$PATH"
    export PATH="/opt/local/bin:/opt/local/sbin:$PATH"
    export PATH="/usr/local/ncbi/blast/bin:$PATH"
    export PATH="/Applications/MATLAB_R2014a.app/bin:$PATH"
    export LD_LIBRARY_PATH="/opt/matlab/bin/glnxa64:$LD_LIBRARY_PATH"
else 
    eval `dircolors`
    LS_COLORS="$LS_COLORS*.JPG=01;35:*.GIF=01;35:*.jpeg=01;35:*.pcx=01;35:*.png=01;35:*.pnm=01;35:*.bz2=01;31:*.mpg=01;38:*.mpeg=01;38:*.MPG=01;38:*.MPEG=01;38:*.m4v=01;038:*.mp4=01;038:*.swf=01;038:*.avi=01;38:*.AVI=01;38:*.wmv=01;38:*.WMV=01;38:*.asf=01;38:*.ASF=01;38:*.mov=01;38:*.MOV=01;38:*.mp3=01;39:*.ogg=01;39:*.MP3=01;39:*.Mp3=01;39"
    export LS_OPTIONS="--color=auto"
#-----Xilinx Path and Variable ----#
    alias xilinx12="source /opt/Xilinx/12.4/ISE_DS/settings64.sh"
    alias xilinx13="source /opt/Xilinx/13.4/ISE_DS/settings64.sh"
    alias xilinx14="source /opt/Xilinx/14.7/ISE_DS/settings64.sh"
    export XILINXD_LICENSE_FILE=2100@10.114.1.45
    export PATH="$PATH:/opt/Xilinx/12.4/ISE_DS/EDK/gnu/microblaze/lin64/bin"
    export PATH="$PATH:/opt/Xilinx/12.4/ISE_DS/EDK/gnu/powerpc-eabi/lin64/bin"
#------modeltech simulator path-------#
    export PATH="$PATH:/opt/modeltech/linux_x86_64:/opt/modeltech/bin"
    export MGLS_LICENSE_FILE=1717@10.114.1.43
    #export MGLS_LICENSE_FILE=1717@10.114.1.43:1717@10.114.1.44:1717@10.114.1.45:1717@10.32.33.51
#---------------Setting Bluespec environment variables------------------------
    export BLUESPECDIR="/opt/Bluespec-2014.05.C/lib/"
    export PATH="${PATH}:${BLUESPECDIR}/bin/"
    export LD_LIBRARY_PATH="${LD_LIBRARY_PATH}:${BLUESPECDIR}/Bluesim"
############################# Environment Variables ##########################
    export LD_LIBRARY_PATH="${LD_LIBRARY_PATH}:/usr/lib:/usr/lib64:/lib"
    export LM_LICENSE_FILE=27003@10.112.10.17:1717@10.114.1.44:1717@10.114.1.45:1717@10.32.33.51:27000@10.114.1.43:27000@10.114.1.44:27000@10.114.1.45:5280@10.114.1.46:5280@10.114.1.47:5280@10.114.1.48:$LM_LICENSE_FILE
#    export LM_LICENSE_FILE=2100@10.114.1.44:27003@10.112.14.24:1717@10.114.1.43:1717@10.114.1.44:1717@10.114.1.45:1717@10.32.33.51:27000@10.114.1.43:27000@10.114.1.44:27000@10.114.1.45:5280@10.114.1.46:5280@10.114.1.47:5280@10.114.1.48:$LM_LICENSE_FILE
#---------To change gcc-Verison----#
    export PATH="/home/sanjayk/.bin:$PATH"
    export LD_LIBRARY_PATH="$LD_LIBRARY_PATH:/opt/Matlab/bin/glnxa64"
    export PATH="$PATH:~/Dropbox/Script"
    export PATH="/opt/blast:$PATH"
#--------------------------Dell Cluster - PBS Script path--------------------
    export PATH="$PATH:/opt/pbs/default/bin"
#-------------SGI Altix-PBS Script Path--------------------------------------
    export PATH="$PATH:/opt/pbs/bin"
fi
#-------To increase history size------------#
export HISTSIZE=10000
export HISTCONTROL=erasedups
shopt -s histappend
export TERM=xterm-color
export GREP_OPTIONS="--color=auto" 
export GREP_COLOR="1;32"
unset GREP_OPTIONS
unset GREP_COLOR
#----------------------Environment Variables------------------------------//
#export HTTP_PROXY="http://sercsanjayk:firiesout5477@proxy.iisc.ernet.in:3128"
#export HTTPS_PROXY="https://sercsanjayk:firiesout5477@proxy.iisc.ernet.in:3128"
#export FTP_PROXY="ftp://sercsanjayk:firiesout5477@proxy.iisc.ernet.in:3128"
#export RSYNC_PROXY="http://sercsanjayk:firiesout5477@proxy.iisc.ernet.in:3128"
function myart(){
	cd ~/Dropbox/Personal/MyArticle
}
function bio(){
    cd /media/Data/BioM3
}
