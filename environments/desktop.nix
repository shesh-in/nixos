{ pkgs, lib, config, ... }: 
{
    imports = [
        ./common.nix
        #../dotfiles/regreet
        #../dotfiles/tuigreet
        ../dotfiles/greetd
        ../options/sound.nix
        ../dotfiles/timers.nix
    ];

    programs.hyprland.enable = true;
}
