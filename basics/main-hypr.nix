# Определение базовых настроек: локали, дефолтный шелл, etc.

{ config, lib, pkgs, ... }: {

    # Часовой пояс
    time.timeZone = "Europe/Moscow";

    # Консоль
    i18n.defaultLocale = "en_US.UTF-8";
        console = {
	    font = "Lat2-Terminus16";
	    useXkbConfig = true;
    };

    # Дефолтный шелл. Определяется для всех пользователей!
    users.defaultUserShell = pkgs.zsh;
    programs.zsh = {
        enable = true;
    	ohMyZsh.theme = "agnoster";
    };

    # Включение сети
    networking.networkmanager.enable = true;

    # Включение new cli и flakes
    nix.settings.experimental-features = [ "nix-command" "flakes" ];

    # Разрешить устанавливать проприетарное ПО
    nixpkgs.config.allowUnfree = true;

    # Включить hyprland - это надо сделать systemwide, иначе ругается
    programs.hyprland.enable = true;
}
