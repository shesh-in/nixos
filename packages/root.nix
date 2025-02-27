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
        btop
        tmux

        tree
        zip
        unzip
       
        busybox
        superfile
        trash-cli
        jq

        neofetch
        yazi
    ];
}
