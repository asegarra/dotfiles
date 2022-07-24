#!/bin/sh

run() {
    if ! pgrep $1;
    then
        $@&
    fi
}

nitrogen --restore
run redshift
run imwheel -d
run dunst
run playerctld daemon
run nm-applet
run picom
/usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1 &
xss-lock --transfer-sleep-lock -- i3lock -c 000000 --nofork &
xautolock -time 60 -locker "systemctl suspend" -notify 10 -notifier \
	'notify-send -u critical -t 8 "PC will suspend in 10 seconds"' -detectsleep &
