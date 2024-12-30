#! /bin/sh

TOUCHSCREEN_INPUT=$(hyprctl getoption input:touchdevice:enabled | awk 'NR==1{print $2}')
if [ "$TOUCHSCREEN_INPUT" = 1 ] ; then
    hyprctl keyword input:touchdevice:enabled false
else
    hyprctl keyword input:touchdevice:enabled true
fi

exit 0
