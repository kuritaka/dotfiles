
#alias
alias ls='ls --show-control-chars -F --color --ignore={NTUSER.*,ntuser.*}'
alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'
which vim > /dev/null 2>&1 && alias vi='vim'
which vim > /dev/null 2>&1 && alias view='vim -R'
alias less='less -X'

