# Профиль Github.

{ config, lib, pkgs, ... }: {
    programs.git = {
        enable = true;
	    userName = "shesh-in";
	    userEmail = "6970317@gmail.com";
    };
}
