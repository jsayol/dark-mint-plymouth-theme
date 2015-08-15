#!/bin/bash

if [ $EUID -ne 0 ]; then
	echo ERROR: You must run this as root
	exit
fi

THEME='dark-mint'
INSTALLDIR=/lib/plymouth/themes

printf "Copying '${THEME}' theme files..."
mkdir -p ${INSTALLDIR}/${THEME}
cp -fr $( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )/* ${INSTALLDIR}/${THEME}
printf " DONE\n"

printf "Installing '${THEME}' theme..."
update-alternatives --quiet --install ${INSTALLDIR}/default.plymouth default.plymouth ${INSTALLDIR}/${THEME}/theme.plymouth 100
printf "... DONE\n"

printf "Selecting '${THEME}' theme..."
update-alternatives --quiet --set default.plymouth ${INSTALLDIR}/${THEME}/theme.plymouth
printf ".... DONE\n"

printf "Updating initramfs...\n"
update-initramfs -u
printf "DONE\n"
