{ config, lib, pkgs, ... }:
{
    environment.defaultPackages = [ ];

    environment.systemPackages = with pkgs; [
        neovim
        networkmanager
        zsh
        
        git
        home-manager

        sysstat
        lm_sensors
        udisks
        htop
        tmux

        tree
        zip
        unzip
    ];
}
