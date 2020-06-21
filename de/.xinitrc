#!/bin/sh

userresources=$HOME/.Xresources
usermodmap=$HOME/.Xmodmap
sysresources=/etc/X11/xinit/.Xresources
sysmodmap=/etc/X11/xinit/.Xmodmap

# merge in defaults and keymaps

if [ -f $sysresources ]; then







    xrdb -merge $sysresources

fi

if [ -f $sysmodmap ]; then
    xmodmap $sysmodmap
fi

if [ -f "$userresources" ]; then







    xrdb -merge "$userresources"

fi

if [ -f "$usermodmap" ]; then
    xmodmap "$usermodmap"
fi

# start some nice programs

if [ -d /etc/X11/xinit/xinitrc.d ] ; then
 for f in /etc/X11/xinit/xinitrc.d/?*.sh ; do
  [ -x "$f" ] && . "$f"
 done
 unset f
fi

clipmenud &
start_dwm_status &
dwm
#dwm -nf "#7dc1ff" -nb "#1f1f1f" -sb "#2b2c30" -sf "#35ffdc" 
#dwm -fn "Hurmit Nerd Font Mono-8" -nf "#7dc1ff" -nb "#1f1f1f" -sb "#2b2c30" -sf "#35ffdc" 
#dwm -nf "#ff90d0" -nb "#1f1f1f" -sb "#2b2c30" -sf "#35ffdc" 

