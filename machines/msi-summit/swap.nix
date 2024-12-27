{ config, lib, pkgs, ... }: {
    
    swapDevices = [ {
	    device = "/btrfs/@swap/swapfile";
	    size = 24 * 1024; # in megabytes
    } ];

    boot.kernelParams = [
    	# get offset with
	    # $ btrfs inspect-internal map-swapfile -r /btrfs/@swap/swapfile
    	"resume_offset=533760" 
	    # uuid of decrypted disk
	    "resume=UUID=e2ca6468-6a92-4fd6-84ff-88873ba02d12"
    ];

    # this param literally turns on hibernation, see source    
    # https://github.com/NixOS/nixpkgs/blob/1a355ae7514c8095a19c296883f4465c84152cec/nixos/modules/security/misc.nix#L121-L126
    security.protectKernelImage = false;

    # same uuid
    boot.resumeDevice = "/dev/disk/by-uuid/e2ca6468-6a92-4fd6-84ff-88873ba02d12";
}
