{ config, lib, pkgs, ... }: {
    xdg.mimeApps = {
        enable = true;
        defaultApplications = {
            "text/mkv" = "vlc";
        };
    };
}
