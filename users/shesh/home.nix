{ config, lib, pkgs, osConfig, ... }:
{
    home.username = "shesh";
    home.homeDirectory = "/home/shesh";
    home.stateVersion = osConfig.system.stateVersion;
    
    programs.home-manager.enable = true;
    home.pointerCursor = {
        gtk.enable = true;
        name = "GoogleDot-Blue";
        package = pkgs.google-cursor;
        size = 20;
    };

    gtk = {
        enable = true;
        cursorTheme = {
            name = "GoogleDot-Blue";
            package = pkgs.google-cursor;
        };
        font = {
            name = "JetBrainsMonoNL NF Regular";
            package = pkgs.nerd-fonts.jetbrains-mono;
        };
    };

}
