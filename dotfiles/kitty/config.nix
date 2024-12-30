{ config, lib, pkgs, home, ... }:
{
    programs.kitty = {
        enable = true;
        themeFile = "base2tone-desert-dark";
    };
}
