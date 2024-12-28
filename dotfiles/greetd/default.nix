{ config, lib, pkgs, ... }:
{
    services.greetd = {
        enable = true;
        settings = rec {
            initial_session = {
                command = "${pkgs.hyprland}/bin/Hyprland > /dev/null";
                user = "shesh";
            };
            default_session = initial_session;
        };
    };
}