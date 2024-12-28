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
    boot.kernelParams = ["quiet"];
    boot.plymouth = {
        enable = true;
        themePackages = [ pkgs.adi1090x-plymouth ];
        theme = "dna";
        font = "${pkgs.nerd-fonts.jetbrains-mono}/share/fonts/truetype/NerdFonts/JetBrainsMono/JetBrainsMonoNLNerdFont-Regular.ttf";
        extraConfig = "
            [Daemon]
            ShowDelay=5
        ";
    };
}
