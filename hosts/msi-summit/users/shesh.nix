# Home-файл пользователя shesh на MSI.

{ config, lib, pkgs, ... }: {
    imports = [
    	# Пакеты пользователя
	    ../../../packages/graphics.nix
	    ../../../packages/fonts.nix
        ../../../packages/software.nix

	    # Конфиги
	    ../../../apps/wofi/msi.nix
	    ../../../apps/git/main.nix
    ];

    home.username = "shesh";
    home.homeDirectory = "/home/shesh";

    # Включить home-manager
    programs.home-manager.enable = true;

    # Не трогать.
    home.stateVersion = "23.11";
}
