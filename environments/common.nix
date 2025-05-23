{ config, lib, pkgs, ...}: 
{
    imports = [
        ../options/locale.nix
        ../options/networking.nix
        ../options/console.nix
        ../options/nix.nix
        ../options/nixpkgs.nix
        ../options/ssh.nix
        ../options/aliases.nix

        ../packages/root.nix
    ];

    boot.kernelPackages = pkgs.linuxPackages_latest;

    programs.neovim = {
        enable = true;
        defaultEditor = true;
    };
    environment.variables = {
        EDITOR = "nvim";
        VISUAL = "nvim";
    };

    users.defaultUserShell = pkgs.zsh;
    programs.zsh = {
        enable = true;
        ohMyZsh = {
            enable = true;
            theme = "agnoster";
        };
    };

    services.devmon.enable = true;
    services.gvfs.enable = true;
    services.udisks2.enable = true;

    #programs.git = {
    #    enable = true;
    #    userName = "shesh-in";
    #    userEmail = "6970317@gmail.com";
    #};
}
