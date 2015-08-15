## How to install the theme
From the terminal, run these commands:

    $ tar xzf dark-mint-plymouth-theme_v0.1.tar.gz
    $ cd dark-mint-plymouth-theme_v0.1
    $ sudo ./install.sh

## To uninstall the theme
From the terminal, run this command:

    $ sudo /lib/plymouth/themes/dark-mint/uninstall.sh

## How to preview the theme
After installing, you can preview the theme without having to reboot. Just run this command from the terminal:

    $ sudo /lib/plymouth/themes/dark-mint/preview.sh

It runs for 2 seconds by default. You can optionally specify the number of seconds to run the preview:

    $ sudo /lib/plymouth/themes/dark-mint/preview.sh 10

#### Note: previewing the theme requires plymouth-x11. To install the package:

    $ sudo apt-get install plymouth-x11
