#!/bin/bash
# 1af-pi-screensaver-slide.sh

# url: ###
# This script is licensed under GNU GPL version 2.0 or above

# Based on script screensaverfull.sh
# Copyright (c) 2017 jamcnaughton.com
# url code: https://github.com/jamcnaughton/useful-linux-scripts/simplescreensaver
# url description: https://jamcnaughton.com/2014/09/05/simple-slideshow-screensaver-script-for-ubuntu/

# Description: ####
# screensaver.sh needs xprintidle and slide (https://github.com/NautiluX/slide) to work.

# HOW TO USE:
# 1. Change values at configuration section
# 2. Run install.sh (or manually add this script to autostart of LXDE/-pi, see https://www.raspberrypi.org/forums/viewtopic.php?t=131659)

# Configuration:
delay=60
picture_path=/mnt/remote_nas

# Ensure, that primary screen will be used
export DISPLAY=:0.0

IDLE_TIME=$(($delay*1000))

while sleep $((1)); do
    idle=$(xprintidle)
    if [ $idle -ge $IDLE_TIME ]; then
        slide -r -s -p $picture_path
    fi
done

exit 0
