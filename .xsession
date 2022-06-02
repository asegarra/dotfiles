#!/bin/sh

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

exec i3
