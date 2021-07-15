#!/bin/sh

if [ -d /etc/X11/xinit/xinitrc.d ] ; then
 for f in /etc/X11/xinit/xinitrc.d/?*.sh ; do
  [ -x "$f" ] && . "$f"
 done
 unset f
fi

xrdb -merge $HOME/.Xresources
xsetroot -solid "#333333" 
xss-lock -l -- slock &
xkeysnail --watch &
slstatus & exec dwm

# exec i3
