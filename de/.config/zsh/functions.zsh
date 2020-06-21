# ZSH Functions for Everyday Use
#
daily () { $EDITOR $HOME/notem/"$(date '+%Y')"/"$(date '+%j')".note}


zshrc () { $EDITOR $HOME/.zshrc; }


zshfunction () { $EDITOR $HOME/.config/zsh/functions.zsh; }


helper () {
	$EDITOR $HOME/notem/helper/$1.md;
}
