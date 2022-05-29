#!/bin/sh

# map caps to control
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

run() {
    if ! pgrep $1;
    then
        $@&
    fi
}

run redshift
run imwheel -d
run dunst
run playerctld daemon
run nm-applet
nitrogen --restore
run picom
/usr/lib/policykit-1-gnome/polkit-gnome-authentication-agent-1 &
xss-lock --transfer-sleep-lock -- i3lock -c 000000 --nofork &
xautolock -time 60 -locker "systemctl suspend" -notify 10 -notifier \
	'notify-send -u critical -t 8 "PC will suspend in 10 seconds"' -detectsleep &

i3
