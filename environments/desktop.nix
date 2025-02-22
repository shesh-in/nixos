{ pkgs, lib, config, ... }: 
{
    imports = [
        ./common.nix
        ../dotfiles/greetd
        ../options/sound.nix
        #../dotfiles/cron/wallpaper.nix
    ];

    programs.steam.enable = true;
    programs.hyprland.enable = true;
    hardware.opengl.enable = true;
    hardware.graphics = {
        enable = true;
    };

    hardware.bluetooth.enable = true;
    hardware.bluetooth.powerOnBoot = true;

}

