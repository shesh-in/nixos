# Пользовательские программы.

{ config, lib, pkgs, ... }: {
    home.packages = with pkgs; [
        musescore   # софт для музыкальной нотации
    ];
}
