{ pkgs, lib, config, ... }: 
{
    imports = [
        ./common.nix
        ../dotfiles/greetd
        ../options/sound.nix
    ];

    programs.hyprland.enable = true;
}
