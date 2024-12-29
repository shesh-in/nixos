{ config, lib, pkgs, ... }:
{
    system.nixos = {
        tags = "NixOS";
        label = builtins.currentTime;
    };
}
