{ config, lib, pkgs, home, ... }:
{
    programs.kitty = {
        enable = true;
        themeFile = "base2tone-desert-dark";
        font = {
            package = pkgs.nerd-fonts.jetbrains-mono;
            name = "JetBrainsMonoNL NF Regular";
        };
    };
}
