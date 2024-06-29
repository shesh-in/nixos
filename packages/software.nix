# Пользовательские программы.

{ config, lib, pkgs, ... }: {
    home.packages = with pkgs; [
        hugo        # статические сайты
        musescore   # софт для музыкальной нотации
        calibre     # читалка
    ];

    home.xdg.mimeApps = {
        enable = true;
        defaultApplications = {
            "application/pdf" = ["org.pwmt.zathura.desktop"];
        };
    };
}
