{ pkgs, lib, config, ... }: 
{
    imports = [
        ./common.nix
        ../options/sound.nix
    ]

    programs.hyprland.enable = true;
}
