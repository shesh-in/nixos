{ config, lib, pkgs, ... }:
{
    services.pipewire = {
        enable = true;
        alsa = {
            enable = true;
            support32Bit = true;
        };
    };
}
