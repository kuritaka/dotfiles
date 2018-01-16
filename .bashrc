# .bashrc

# User specific aliases and functions

alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# alias
which vim > /dev/null 2>&1 && alias vi='vim'
which vim > /dev/null 2>&1 && alias view='vim -R'
alias less='less -X'
 
# history
HISTSIZE=10000
HISTFILESIZE=10000
HISTTIMEFORMAT='%Y-%m-%dT%T%z '
HISTIGNORE="history*:pwd"
