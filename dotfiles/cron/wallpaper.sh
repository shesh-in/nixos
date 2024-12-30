#! /bin/sh
WALLPAPER_FOLDER=/etc/nixos/dotfiles/hypr/wallpaper/earth

sleep 5

PRESENT_TIME=$(date +%H)
WALLPAPER="${WALLPAPER_FOLDER}/${PRESENT_TIME}.jpg"

hyprctl hyprpaper preload "$WALLPAPER"
sleep 5
hyprctl hyprpaper wallpaper ", $WALLPAPER"

sleep 1
exit 0
