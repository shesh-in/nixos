{ pkgs, lib, config, ... }:
{
    programs.nixvim = lib.mkForce {
        enable = true;
        defaultEditor = true;
    };
}
