{ inputs, pkgs, ... }:
{
    nix = {
        settings = {
            trusted-users = [ "root" "@wheel" "shesh" ];
            experimental-features = [ "nix-command" "flakes" ];
        };
    };
}
