#! /bin/sh

chosen=$(printf "Power Off\nRestart\nSuspend\nLog Out" | rofi -dmenu -i -theme-str '@import "~/.config/rofi/powermenu.rasi"')

case "$chosen" in
	"Power Off") systemctl poweroff ;;
	"Restart") systemctl reboot ;;
	"Suspend") i3lock -i ~/Pictures/backgrounds/coffee.png && systemctl suspend ;;
	"Log Out") i3-msg exit ;;
	*) exit 1 ;;
esac
