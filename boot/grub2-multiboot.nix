# Описание загрузчика GRUB2 с поддержкой запуска нескольких операционных систем. 
# Загрузчик расположен в /boot.

{ config, lib, pkgs, ... }: {
    boot.loader = {
        systemd-boot.enable = false;
	    efi = {
	        canTouchEfiVariables = true;
    	    efiSysMountPoint = "/boot";
    	};
    	grub = {
    	    devices = [ "nodev" ];
    	    enable = true;
    	    efiSupport = true;
    	    useOSProber = true;
    	};
    };
}
