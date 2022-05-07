#!/bin/sh
sudo apt-get install xprintidle

cp ./1af-pi-screensaver-slide.sh /usr/local/bin/1af-pi-screensaver-slide.sh

chmod 755 /usr/local/bin/1af-pi-screensaver-slide.sh

mkdir ~/.config/lxsession/LXDE

echo "@1af-pi-screensaver-slide" >> ~/.config/lxsession/LXDE/autostart

echo "Installation succeeded"
