#!/bin/sh

if [ $# -eq 0 ]; then
    echo "Need 1 argument (up, down)"
    exit 1
fi

notify() {
    local current_level="$(light -G)"
    local icon='display-brightness'
    notify-send -c 'osd' -i $icon -h string:x-dunst-stack-tag:light -h int:value:$current_level $(printf %.0f%% $current_level)
    paplay /usr/share/sounds/freedesktop/stereo/message.oga
}

case "$1" in
    up) 
        light -A 5
	notify 
	;;
    down) 
	light -U 5
	notify 
	;;
    *) echo "$1 is not a valid option" ;;
esac

