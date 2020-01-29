#!/bin/bash

# setting up new mode for my HDMI
xrandr --newmode "2560x1440" 311.57 2560 2744 3024 3488 1440 1441 1444 1490 +HSync +VSync
xrandr --addmode HDMI-1 2560x1440

# default monitor is eDP-1
MONITOR=eDP-1

# functions to switch from eDP-1 to HDMI and vice versa
function ActivateHDMI {
    echo "Switching to HDMI-1"
    #xrandr --output HDMI-1 --mode 1920x1080 --dpi 160 --output eDP-1 --off
    xrandr --output HDMI-1 --mode 2560x1440 --primary --dpi 115 --output eDP-1 --off
    MONITOR=HDMI-1
}
function DeactivateHDMI {
    echo "Switching to eDP-1"
    xrandr --dpi 95 --output HDMI-1 --off --output eDP-1 --auto --primary
    MONITOR=eDP-1
}

# functions to check if HDMI is connected and in use
function HDMIActive {
    [ $MONITOR = "HDMI-1" ]
}
function HDMIConnected {
    ! xrandr | grep "^HDMI-1" | grep disconnected
}

# actual script
while true
do
    if ! HDMIActive && HDMIConnected
    then
        ActivateHDMI
    fi

    if HDMIActive && ! HDMIConnected
    then
        DeactivateHDMI
    fi

    sleep 1s
done
