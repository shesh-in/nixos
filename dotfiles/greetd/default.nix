{ config, lib, pkgs, ... }:
{
    services.greetd = {
        enable = true;
        settings = rec {
            initial_session = {
                command = "${pkgs.hyprland}/bin/Hyprland --config \"/etc/nixos/dotfiles/hypr/hyprland.conf\"> /dev/null";
                user = "shesh";
            };
            default_session = initial_session;
        };
    };
}
