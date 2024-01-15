#!/bin/bash
# sudo@redhat.com, 2024
# ugly yubikey udev hack for when you need sudo integration and automatic locking of your laptop

# If we saw something related to USB, that is a clue
if dmesg|tail -4|grep "usb" >/dev/null
then
	# If it's also a disconnected, that should be our yubikey getting disconnected
	# and we should lock the screen
	if dmesg|tail -9|grep "USB disconnect" >/dev/null
	then
		usr/bin/loginctl lock-sessions
	fi
fi
