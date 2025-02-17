{ config, lib, pkgs, ... }: {

    environment.systemPackages = with pkgs; [
        #grub2
        #os-prober
        efibootmgr
    ];
    fileSystems."/boot".options = [ "umask=0077" "defaults" ];
    boot = {
        loader = {
            timeout = 0;
            systemd-boot.enable = true;
	        efi = {
	            canTouchEfiVariables = true;
    	        efiSysMountPoint = "/boot";
    	    };
    	    #grub = {
    	    #    devices = [ "nodev" ];
    	    #    enable = true;
    	    #    efiSupport = true;
    	    #    useOSProber = false;
            #    timeoutStyle = "hidden";
            #    theme = pkgs.stdenv.mkDerivation {
            #        pname = "distro-grub-themes";
            #        version = "3.1";
            #        src = pkgs.fetchFromGitHub {
            #            owner = "AdisonCavani";
            #            repo = "distro-grub-themes";
            #            rev = "v3.1";
            #            hash = "sha256-ZcoGbbOMDDwjLhsvs77C7G7vINQnprdfI37a9ccrmPs=";
            #        };
            #        installPhase = "cp -r customize/nixos $out";
            #    };
            #    extraConfig = ''
            #        set timeout = 0
            #    '';
    	    #};
        };

        initrd.systemd.enable = true; 
        kernelParams = [
            "quiet" 
            "splash" 
            "vga=current"
            "rd.systemd.show_status=false"
            "rd.udev.log_level=3"
            "udev.log_priority=3"
            "nowatchdog"
        ];
        consoleLogLevel = 0;
        initrd.verbose = false;
        plymouth = {
            enable = true;
            themePackages = [ pkgs.adi1090x-plymouth ];
            theme = "dna";
            font = "${pkgs.nerd-fonts.jetbrains-mono}/share/fonts/truetype/NerdFonts/JetBrainsMono/JetBrainsMonoNLNerdFont-Regular.ttf";
        };
    };
}
