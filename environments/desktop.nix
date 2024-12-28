{ pkgs, lib, config, ... }: 
{
    imports = [
        ./common.nix
        ../dotfiles/regreet
        #../dotfiles/tuigreet
        ../options/sound.nix
    ];

    programs.hyprland.enable = true;
}
