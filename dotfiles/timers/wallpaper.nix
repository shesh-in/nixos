{ config, lib, pkgs, ... }:
{
    systemd.timers.wallpaper = {
        wantedBy = [ "timers.target" ];
        timerConfig = {
            OnCalendar = "* *-*-* *:*:00";
            Persistent = true;
        };
    };

    systemd.services.wallpaper = {
        script = ''
            ${pkgs.wpaperctl} next
        '';
        path = [ pkgs.wpaperctl ];
        serviceConfig = {
            Type = "oneshot";
            User = "shesh";
        };
    };
}
