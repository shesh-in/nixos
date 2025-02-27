#! /bin/sh

if [ "$(ls /dev | grep 'video')" = "" ]; then 
    echo "/etc/nixos/dotfiles/eww/icons/cam_off.svg"
else
    echo "/etc/nixos/dotfiles/eww/icons/cam_on.svg"
fi
