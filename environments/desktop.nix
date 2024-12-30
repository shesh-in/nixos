{ pkgs, lib, config, ... }: 
{
    imports = [
        ./common.nix
        ../dotfiles/greetd
        ../options/sound.nix
        ../dotfiles/cron/wallpaper.nix
    ];

    programs.hyprland.enable = true;
}
