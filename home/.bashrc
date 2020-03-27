# .bashrc

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias mm='mk $1 && cd $1'

PS1='[\u@\h \W]\$ '

bind 'TAB:menu-complete'
bind '"\e[Z":menu-complete-backward'

[ -f ~/.fzf.bash ] && source ~/.fzf.bash
