{ pkgs, lib, config, ... }: 
{
    imports = [
        ./common.nix
        ../dotfiles/greetd
        ../options/sound.nix
        ../dotfiles/timers/wallpaper.nix
    ];

    programs.hyprland.enable = true;
}
