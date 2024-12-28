{ pkgs, lib, config, ... }: 
{
    imports = [
        ./common.nix
        ../dotfiles/tuigreet
        ../options/sound.nix
    ];

    programs.hyprland.enable = true;
}
