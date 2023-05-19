#! /bin/sh

chosen=$(printf "Log Out\nRestart\nSuspend\nPower OFF" | rofi -dmenu -i -theme-str '@import "~/.config/rofi/powermenu.rasi"')

case "$chosen" in
	"Log Out") i3-msg exit ;;
	"Restart") systemctl reboot ;;
	"Suspend") i3lock -i ~/Pictures/backgrounds/coffee.png && systemctl suspend ;;
	"Power OFF") systemctl poweroff ;;
	*) exit 1 ;;
esac
