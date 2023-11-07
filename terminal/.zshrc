export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="robbyrussell"
plugins=(git)

source $ZSH/oh-my-zsh.sh

# User configuration
TIMEPROMPT='%{$fg_bold[blue]%}%D{%b %d, %Y - %H:%M:%S}%{$reset_color%}'

function preexec() {
  timer=${timer:-$SECONDS}
}

function precmd() {
  if [ $timer ]; then
    timer_show=$(($SECONDS - $timer))
    export RPROMPT="%F{cyan}${timer_show}s %{$reset_color%} ${TIMEPROMPT}"
    unset timer
else
    export RPROMPT=$TIMEPROMPT
  fi
}

# alias
alias vim=nvim
