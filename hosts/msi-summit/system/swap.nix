# Здесь описан свопфайл и заданы необходимые kernel params.

# Ссылка с default.nix

{ config, lib, pkgs, ... }: {
    
    swapDevices = [ {
	    device = "/btrfs/@swap/swapfile";
	    size = 24 * 1024; # в мегабайтах
    } ];

    boot.kernelParams = [ 
    	# offset получить с помощью
	    # $ btrfs inspect-internal map-swapfile -r /btrfs/@swap/swapfile
    	"resume_offset=533760" 
	    # uuid уже расшифрованного диска
	    "resume=UUID=e2ca6468-6a92-4fd6-84ff-88873ba02d12"
    ];

    # Этот параметр буквально выключает гибернацию, без него ничего не работает
    # и понял я это, только когда залез в исходный код
    # https://github.com/NixOS/nixpkgs/blob/1a355ae7514c8095a19c296883f4465c84152cec/nixos/modules/security/misc.nix#L121-L126
    security.protectKernelImage = false;

    # Тот же самый uuid
    boot.resumeDevice = "/dev/disk/by-uuid/e2ca6468-6a92-4fd6-84ff-88873ba02d12";
}
