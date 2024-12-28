{ config, lib, pkgs, ... }: {

    environment.systemPackages = with pkgs; [
        grub2
        #os-prober
        efibootmgr
    ];

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
    	    useOSProber = false;
    	};
    };

    boot.initrd.systemd.enable = true; 
    boot.kernelParams = [
        "quiet" 
        "splash" 
        "vga=current"
        "rd.systemd.show_status=false"
        "rd.udev.log_level=3"
        "udev.log_priority=3"
    ];
    boot.consoleLogLevel = 0;
    boot.initrd.verbose = false;
    boot.plymouth = {
        enable = true;
        themePackages = [ pkgs.adi1090x-plymouth ];
        theme = "dark_planet";
        font = "${pkgs.nerd-fonts.jetbrains-mono}/share/fonts/truetype/NerdFonts/JetBrainsMono/JetBrainsMonoNLNerdFont-Regular.ttf";
    };
}
