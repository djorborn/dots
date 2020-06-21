#
source ~/.config/zsh/functions.zsh
source ~/.config/zsh/alias.zsh
# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi


# zftp
fpath=(~/myfns $fpath)
autoload -U zfinit
zfinit

# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -v
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/de/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# Autocomplete aliases
setopt COMPLETE_ALIASES
# autocompletion with an arrow-key driven interface
zstyle ':completion:*' menu select

# Alias
alias ddgr="BROWSER=w3m ddgr"

# Created by newuser for 5.8
source /usr/share/zsh-theme-powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

source  /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

zstyle :compinstall filename '/home/de/.zshrc'
autoload -Uz compinit
compinit

## Alias
#
alias ls="ls --color=always"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

