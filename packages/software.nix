{ config, lib, pkgs, ... }: {
    home.packages = with pkgs; [
        musescore   # софт для музыкальной нотации
        xdg-utils    
        tor-browser 

        libsForQt5.dolphin  
        texstudio
        texliveFull

        python3

        puddletag

        zoom-us

        R
        testdisk
        vlc

        alsa-utils

        python3

        telegram-desktop
        firefox-devedition
        steam
        anki
        obsidian
        syncthing
        zathura
        keepassxc
        pinta

    ];

    programs.steam.enable = true;

}
