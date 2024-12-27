{ config, lib, pkgs, ... }:
{
    users = {
        mutableUsers = false;
        users.shesh = {
            isNormalUser = true;
            uid = 1001;
            home = "/home/shesh";
            extraGroups = [
              "wheel"
              "networkmanager"
            ];
            hashedPassword = "$y$j9T$TphlBhSjbWc9cojvkR7FX.$KLYFmMgm4DOxzzPrxqYDdKvicoI.sWpB5pychYIUip8"
        }
    }
}
