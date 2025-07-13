{ config, lib, pkgs, home, ... }:
{
    home.packages = with pkgs; [
        wayland
        hyprland
        wofi
        eww
        kitty
        wl-clipboard
        grim
        slurp
        brightnessctl
        wev
        xorg.xlsclients
        xwayland
        hyprpaper
        #wlr-randr
        lf
    ];
}
