{ pkgs, lib, config, ... }: 
{
    imports = [
        ./common.nix
        #../dotfiles/regreet
        #../dotfiles/tuigreet
        ../dotfiles/greetd
        ../options/sound.nix
    ];

    programs.hyprland.enable = true;
}
