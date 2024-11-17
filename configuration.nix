# More info:
# man 5 configuration.nix
# https://search.nixos.org/options
# nixos-help


{ config, lib, pkgs, ... }:

{


##### USERS #####
#    users.users.shesh = {
#    	isNormalUser = true;
#	home = "/home/shesh";
#	extraGroups = [ "wheel" "networkmanager" ];
#    };

    # password is set with passwd.



##### NETWORK #####
    


##### FONTS #####
 

##### PACKAGES #####


    environment.systemPackages = with pkgs; [
    # PROGRAMMING
    	python3			# python shell

    # SOFTWARE
	telegram-desktop	# messaging app
	firefox-devedition	# web browser
	steam 			# gaming
	anki 			# flashcards software
	obsidian 		# markdown notes
	syncthing		# enables file syncronization between devices
	zathura 		# pdf viewer
	keepassxc		# password manager
	pinta			# photo editor

    # FONTS
	font-awesome    	# mainly icons
    ];

    nixpkgs.config.permittedInsecurePackages = [
	"electron-25.9.0" # otherwise obsidian won't install
    ];
	
    programs.zsh.enable = true;
    programs.zsh.ohMyZsh = {
    	enable = true;
	    theme = "agnoster";
    };

    programs.steam.enable = true;
  
    services.udisks2.enable = true;
    security.polkit.enable = true;

    hardware = {
	opengl.enable = true;
	nvidia.modesetting.enable = true;
    };

    services.pipewire = {
	enable = true;
	alsa.enable = true;
	alsa.support32Bit = true;
    };

}

