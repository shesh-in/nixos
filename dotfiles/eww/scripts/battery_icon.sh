#! /bin/sh
percent=$(($(cat /sys/class/power_supply/BAT1/capacity)))
status=$(cat /sys/class/power_supply/BAT1/status)

if [ "$status" = "Not charging" && $percent -lt 90 ]; then
    echo "/etc/nixos/dotfiles/eww/icons/battery_question.svg"
elif [ "$status" = "Full" ]; then
    echo "/etc/nixos/dotfiles/eww/icons/battery_full.svg"
elif [ "$status" = "Charging" ]; then
    echo "/etc/nixos/dotfiles/eww/icons/battery_charging.svg"
elif [ $percent -gt 87 ]; then
    echo "/etc/nixos/dotfiles/eww/icons/battery_full.svg"
elif [ $percent -gt 75 ]; then
    echo "/etc/nixos/dotfiles/eww/icons/battery_6.svg"
elif [ $percent -gt 62 ]; then
    echo "/etc/nixos/dotfiles/eww/icons/battery_5.svg"
elif [ $percent -gt 50 ]; then
    echo "/etc/nixos/dotfiles/eww/icons/battery_4.svg"
elif [ $percent -gt 37 ]; then
    echo "/etc/nixos/dotfiles/eww/icons/battery_3.svg"
elif [ $percent -gt 25 ]; then
    echo "/etc/nixos/dotfiles/eww/icons/battery_2.svg"
elif [ $percent -gt 12 ]; then
    echo "/etc/nixos/dotfiles/eww/icons/battery_1.svg"
else
    echo "/etc/nixos/dotfiles/eww/icons/battery_0.svg"
fi
