{ config, pkgs, ... }:
{
    programs.zsh = {
        enable = true;
        shellAliases = {
        obsidian = "XDG_CURRENT_DESKTOP=GNOME obsidian";
        };
    };
}
