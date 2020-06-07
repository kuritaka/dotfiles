# Run once at login
# .bash_profile -> .bashrc

test -f ~/.profile && . ~/.profile
test -f ~/.bashrc && . ~/.bashrc


PATH=$PATH:$HOME/.local/bin:$HOME/bin

export LANG=ja_JP.UTF-8
