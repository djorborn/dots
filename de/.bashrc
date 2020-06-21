# .bashrc

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias mm='mk $1 && cd $1'

PS1='[\u@\h \W]\$ '

bind 'TAB:menu-complete'
bind '"\e[Z":menu-complete-backward'

[ -f ~/.fzf.bash ] && source ~/.fzf.bash
export XDG_RUNTIME_DIR=/tmp/runtime-de

# Color for manpages in less makes manpages a little easier to read
export LESS_TERMCAP_mb=$'\E[01;31m'
export LESS_TERMCAP_md=$'\E[01;31m'
export LESS_TERMCAP_me=$'\E[0m'
export LESS_TERMCAP_se=$'\E[0m'
export LESS_TERMCAP_so=$'\E[01;44;33m'
export LESS_TERMCAP_ue=$'\E[0m'
export LESS_TERMCAP_us=$'\E[01;32m'

