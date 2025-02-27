#! /bin/sh

volume=$(($(wpctl get-volume @DEFAULT_AUDIO_SINK@ | awk '{printf "%d", $2 * 100}')))
muted=$(wpctl get-volume @DEFAULT_AUDIO_SINK@ | grep -o "M")
if [ "$muted" = "M" ]; then
    echo "/etc/nixos/dotfiles/eww/icons/volume_mute.svg"
elif [ $volume -gt 100 ]; then
    echo "/etc/nixos/dotfiles/eww/icons/volume_too_high.svg"
elif [ $volume -gt 50 ]; then 
    echo "/etc/nixos/dotfiles/eww/icons/volume_full.svg"
else
    echo "/etc/nixos/dotfiles/eww/icons/volume_low.svg"
fi
