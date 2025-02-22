{ config, lib, pkgs, osConfig, ... }:
{
    home.username = "shesh";
    home.homeDirectory = "/home/shesh";
    home.stateVersion = osConfig.system.stateVersion;
    
    programs.home-manager.enable = true;
    
}
