{ config, lib, pkgs, home, ... }:
{
    programs.yazi = {
        enable = true;
        settings = {
            opener = {
                rules = [
                    {
                        run = "zathura \"\$@\"";
                        orphan = true;
                        name = "*.djvu";
                    }
                ];
            };
        };
    };
}
