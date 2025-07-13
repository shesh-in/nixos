{
  description = "Shesh's NixOS system configurations.";

  nixConfig = {
    extra-substituters = [
      "https://hyprland.cachix.org"
      "https://nixpkgs.cachix.org"
      "https://nixpkgs-wayland.cachix.org"
    ];
    extra-trusted-public-keys = [
      "hyprland.cachix.org-1:a7pgxzMz7+chwVL3/pzj6jIBMioiJM7ypFP8PwtkuGc="
      "nixpkgs.cachix.org-1:q91R6hxbwFvDqTSDKwDAV4T5PxqXGxswD8vhONFMeOE="
      "nixpkgs-wayland.cachix.org-1:3lwxaILxMRkVhehr5StQprHdEo4IrE8sRho9R9HOLYA="
    ];
  };

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixpkgs-unstable";
    nixos-hardware.url = "github:NixOS/nixos-hardware";
    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    agenix = {
      url = "github:ryantm/agenix";
      inputs.nixpkgs.follows = "nixpkgs";
      inputs.home-manager.follows = "home-manager";
    };
    nixvim = {
        url = "github:nix-community/nixvim";
        inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs =
    inputs@{
      nixpkgs,
      nixos-hardware,
      home-manager,
      agenix,
      nixvim,
      ...
    }:
    {
      formatter.x86_64-linux = nixpkgs.legacyPackages.x86_64-linux.nixfmt-rfc-style; 

      nixosConfigurations = 
      {
        msi-summit = nixpkgs.lib.nixosSystem {
          system = "x86_64-linux";
          modules = 
          [
            ./machines/msi-summit/hardware-configuration.nix
            ./machines/msi-summit/swap.nix

            ./options/boot.nix

            ./users/shesh/base.nix
            
            ./environments/desktop.nix
            
            #./dotfiles/nvim

            agenix.nixosModules.default
            #nixvim.nixosModules.nixvim

            home-manager.nixosModules.home-manager {
                system.stateVersion = "23.11";
                home-manager = {
                    useGlobalPkgs = true;
                    useUserPackages = true;
                    extraSpecialArgs = { inherit inputs; };
                    users.shesh = {
                      imports = [
                        ./users/shesh/home.nix
                        
                        ./packages/graphic-minimal.nix
                        ./packages/software.nix
                        
                        ./dotfiles/kitty/config.nix
                        ./dotfiles/yazi/config.nix

                        ./dotfiles/wofi/1920x1200.nix

                      ];
                    };
                };
            }
          ];
          specialArgs = { inherit inputs; hostName = "msi-summit"; };
        };
      };
    };
}
