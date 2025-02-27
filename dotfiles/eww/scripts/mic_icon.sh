#! /bin/sh

muted=$(wpctl get-volume @DEFAULT_AUDIO_SOURCE@ | grep -o "M")
if [ "$muted" = "M" ]; then
    echo "/etc/nixos/dotfiles/eww/icons/mic_off.svg"
else
    echo "/etc/nixos/dotfiles/eww/icons/mic_on.svg"
fi
