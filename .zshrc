###########################################
#.zshrc
###########################################


export LANG=ja_JP.UTF-8


#------------------------------------------
#history
#------------------------------------------
HISTFILE=~/.zsh_history
HISTSIZE=100000
SAVEHIST=1000000

# share .zshhistory
#setopt inc_append_history
#setopt share_history


#Do not leave the same command in the history
setopt hist_ignore_all_dups


#------------------------------------------
#completion
#------------------------------------------
#Enable completion function
autoload -Uz compinit
compinit -u
if [ -e /usr/local/share/zsh-completions ]; then
  fpath=(/usr/local/share/zsh-completions $fpath)
fi

#Completion matches lowercase and uppercase letters
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'

#Packed display of completion candidates
setopt list_packed

#Color display of completion candidate list
autoload colors
zstyle ':completion:*' list-colors ''


#------------------------------------------
#Correct spelling of commands
setopt correct

setopt no_beep


DIRSTACKSIZE=100
setopt AUTO_PUSHD



# git
autoload -Uz vcs_info
setopt prompt_subst
zstyle ':vcs_info:git:*' check-for-changes true
zstyle ':vcs_info:git:*' stagedstr "%F{magenta}!"
zstyle ':vcs_info:git:*' unstagedstr "%F{yellow}+"
zstyle ':vcs_info:*' formats "%F{cyan}%c%u[%b]%f"
zstyle ':vcs_info:*' actionformats '[%b|%a]'
precmd () { vcs_info }



PROMPT='
[%B%F{red}%n@%m%f%b:%F{green}%~%f]%F{cyan}$vcs_info_msg_0_%f
%F{yellow}$%f '
#export PS1="%N %~ %# "
#export PS1="%n %~ %# "



#--------------------------------------------
#ssh with peco
#--------------------------------------------
function peco-ssh () {
  local selected_host=$(awk '
  tolower($1)=="host" {
    for (i=2; i<=NF; i++) {
      if ($i !~ "[*?]") {
        print $i
      }
    }
  }
  ' ~/.ssh/config | sort | peco --query "$LBUFFER")
  if [ -n "$selected_host" ]; then
    BUFFER="ssh ${selected_host}"
    zle accept-line
  fi
  zle clear-screen
}
zle -N peco-ssh
bindkey '^\' peco-ssh
