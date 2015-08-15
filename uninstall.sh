#!/bin/bash

THEME='dark-mint'

if [ $EUID -ne 0 ]; then
	echo ERROR: You must run this as root
	exit
fi

printf "Uninstalling '${THEME}' theme..."
update-alternatives --quiet --remove default.plymouth /lib/plymouth/themes/${THEME}/theme.plymouth
printf ".. DONE\n"

printf "Removing '${THEME}' theme files..."
rm -rf /lib/plymouth/themes/${THEME}
printf " DONE\n"

printf "Selecting default theme..."
update-alternatives --quiet --auto default.plymouth
printf "......... DONE\n"

printf "Updating initramfs...\n"
update-initramfs -u
printf "DONE\n"
