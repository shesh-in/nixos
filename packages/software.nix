# Пользовательские программы.

{ config, lib, pkgs, ... }: {
    home.packages = with pkgs; [
        hugo        # статические сайты
        musescore   # софт для музыкальной нотации
        xdg-utils    # дефолтные приложения
        tor-browser # браузер

        libsForQt5.dolphin     # проводник
        texstudio
        texliveFull

        python3

        kid3

     ];

}
