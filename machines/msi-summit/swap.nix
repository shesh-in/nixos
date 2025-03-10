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


    # hibernation fix https://github.com/systemd/systemd/issues/34304
    # на grub такой проблемы не было, но на systemdboot есть. после гибернации невозможно выполнить
    # nixos-rebuild switch, потому что systemdboot чето там делает с efi variables во время гибернации
    # это петч, который это фиксит
    systemd.package = pkgs.systemd.overrideAttrs (old: {
        patches = old.patches ++ [ 
            (pkgs.fetchurl {
                url = "https://github.com/wrvsrx/systemd/compare/tag_fix-hibernate-resume%5E...tag_fix-hibernate-resume.patch";
                hash = "sha256-Z784xysVUOYXCoTYJDRb3ppGiR8CgwY5CNV8jJSLOXU=";
            })
        ];
    });
}
