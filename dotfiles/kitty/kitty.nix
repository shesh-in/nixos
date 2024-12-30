{ config, lib, pkgs, home, ... }:
{
    programs.kitty = {
        enable = true;
        themeFile = "Desert";
    };
}
