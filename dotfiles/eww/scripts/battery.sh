#! /bin/sh
echo -n $(cat /sys/class/power_supply/BAT1/capacity)
echo -n "%"
