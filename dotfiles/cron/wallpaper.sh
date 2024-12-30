#! /bin/sh
WALLPAPER_FOLDER=/etc/nixos/dotfiles/hypr/wallpaper/earth

#sleep 1
usleep 1000000

PRESENT_TIME=$(date +%H)
WALLPAPER="${WALLPAPER_FOLDER}/${PRESENT_TIME}.jpg"
hyprctl hyprpaper wallpaper ", $WALLPAPER"

exit 0
