
#!/bin/sh

#ask=`zenity --list --title="Power Menu" --column="0" "Log Out" "Suspend" "Lock Screen" "Shut Down" "Reboot" --width=100 --height=300 --hide-header`

ask="$(echo -e "Lock\nLog Out\nSuspend\nShutdown\nReboot" | dmenu -fn 'Droid Sans Mono-9')"

if [ "$ask" == "Suspend" ]; then
	systemctl suspend
fi

if [ "$ask" == "Lock" ]; then
	i3lock -c 000000 -i $HOME/Images/Wallpapers/Selection/sci-fi.png
fi

if [ "$ask" == "Log Out" ]; then
	i3-msg exit
fi

if [ "$ask" == "Shutdown" ]; then
	systemctl poweroff
fi

if [ "$ask" == "Reboot" ]; then
	systemctl reboot
fi

exit 0
