
PS1='[${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]]$ '

##################################################################
###### Started my own setup
##################################################################

alias vi='vim -p'
alias mykernel='cd ~/SourceCode/kernel/linux-stable'
alias myconfig='cd ~/programming/config'
alias cpconfig='cp .config ~/programming/config/simple.config'
alias mymodule='cd /home/yang/programming/kernel_module'
alias ll='ls -l'

export CCACHE_DIR="/home/yang/.ccache"
export CC="ccache gcc"
export CXX="ccache g++"
export PATH="/usr/lib/ccache:$PATH"

alias irva-18='ssh -X -i $HOME/.ssh/id_dsa 10.11.18.112 -l yangge'
alias pi='ssh 192.168.2.10 -l pi'
alias mitbbs='luit -encoding gbk telnet mitbbs.com'
alias boron="ssh -X 128.230.96.122 -l yzhang"
alias carbon="ssh -X 128.230.96.123 -l yang"
alias grep1="grep -Einr --color"
