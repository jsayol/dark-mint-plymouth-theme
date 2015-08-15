## Dark Mint

*Dark Mint* is a theme for Plymouth, the boot splash tool for Linux. It's designed with Linux Mint in mind, but can be used in any installation that uses Plymouth.

## How to install the theme
From the terminal, run these commands:

    $ tar xzf dark-mint-plymouth-theme_v0.1.tar.gz
    $ cd dark-mint-plymouth-theme_v0.1
    $ sudo ./install.sh

## How to uninstall the theme
From the terminal, run this command:

    $ sudo /lib/plymouth/themes/dark-mint/uninstall.sh

## How to preview the theme
After installing, you can preview the theme without having to reboot. Just run this command from the terminal:

    $ sudo /lib/plymouth/themes/dark-mint/preview.sh

It runs for 2 seconds by default. You can optionally specify the number of seconds to run the preview:

    $ sudo /lib/plymouth/themes/dark-mint/preview.sh 10

#### Note: previewing the theme requires *plymouth-x11*. To install the package:

    $ sudo apt-get install plymouth-x11


## License

Copyright (C) 2015  Josep Sayol

This program is free software: you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with this program.  If not, see <http://www.gnu.org/licenses/>.
