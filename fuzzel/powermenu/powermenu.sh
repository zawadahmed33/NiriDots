#!/bin/bash

SELECTION="$(printf " - Lock\n - Log out\n - Reboot\n - Shutdown" | fuzzel --dmenu --config=/home/zawad/.config/fuzzel/powermenu/powermenu.ini)"

case $SELECTION in
	*" - Lock")
		swaylock;;
	*" - Log out")
		swaymsg exit;;
	*" - Reboot")
		systemctl reboot;;
	*" - Shutdown")
		systemctl poweroff;;
esac
