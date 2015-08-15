#!/bin/bash

##########################################################
#
# Little script to automate downloading and installing
# the "Dark Mint" Plymouth theme.
#
##########################################################

if [ $EUID -ne 0 ]; then
	echo ERROR: You must run this as root
	exit
fi

cd ~

printf "Finding latest version... "
URL=`wget -qO - https://api.github.com/repos/jsayol/dark-mint-plymouth-theme/releases/latest | grep 'browser_download_url' | cut -d\" -f4`
FILE=$(echo $URL | cut -d/ -f9)
echo $(echo $URL | cut -d/ -f8)

rm -f $FILE

printf "Downloading $FILE ..."
echo -n "    "
wget --progress=dot $URL 2>&1 | grep --line-buffered "%" | sed -u -E "/(.*)http(.+):/d;s/\.//g" | awk '{printf("\b\b\b\b%4s", $2)}'
echo -ne "\b\b\b\b"
echo " DONE"

printf "Extracting $FILE ..."
tar xzf $FILE
rm $FILE
echo ". DONE"

# We let the install script from the package do the rest
./dark-mint/install.sh
