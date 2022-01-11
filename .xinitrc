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

# Composer
xcompmgr &

# Terminator
(sleep 2 && terminator --maximise) &

# Feh wallpaper
slide_wallpaper() {
  time_out="1800"
  if [ ! -z "${1}" ]
  then
      time_out="${1}"
  fi

  while [[ true ]]; do
     feh --bg-fill -no-fehbg --randomize ~/.wallpapers/*
     sleep ${time_out}
  done
}
(sleep 2 && slide_wallpaper) &

exec openbox-session
