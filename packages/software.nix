# Пользовательские программы.

{ config, lib, pkgs, ... }: {
    home.packages = with pkgs; [
        hugo        # статические сайты
        musescore   # софт для музыкальной нотации
    ];
}
