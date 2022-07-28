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

# swap capslock and escape
setxkbmap -option caps:swapescape

# kill X with ctrl+alt+backspace
setxkbmap -option terminate:ctrl_alt_bksp

# enable touchpad tap to click
xinput set-prop "ELAN0672:00 04F3:3187 Touchpad" "libinput Tapping Enabled" 1
xinput set-prop "ELAN0672:00 04F3:3187 Touchpad" "libinput Middle Emulation Enabled" 1
xinput set-prop "Logitech MX Master 3" "libinput Scrolling Pixel Distance" 30

xset b off # disable system bell
xset s off # disable screensaver
xset dpms 600 620 640 

~/.config/i3/autostart.sh

exec i3
