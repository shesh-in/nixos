# Создание пользователей в системе.

{ config, lib, pkgs, ... }: {
    users.users.shesh = {
        isNormalUser = true;
	home = "/home/shesh";
	extraGroups = [ 
	    "wheel"
	    "networkmanager"
	];
    };
}
