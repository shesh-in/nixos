# Пользовательские программы.

{ config, lib, pkgs, ... }: {
    home.packages = with pkgs; [
        hugo        # статические сайты
        musescore   # софт для музыкальной нотации
        calibre     # читалка
        xdg-utils    # дефолтные приложения
        tor-browser # браузер
    ];
}
