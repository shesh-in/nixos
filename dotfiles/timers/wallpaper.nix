{ config, lib, pkgs, ... }:
{
    systemd.timers.wallpaper = {
        wantedBy = [ "timers.target" ];
        timerConfig = {
            OnCalendar = "*-*-* *:*:00";
            Persistent = true;
            Unit = "wallpaper.service";
        };
    };

    systemd.services.wallpaper = {
        script = ''
            ${pkgs.wpaperd}/bin/wpaperctl next
        '';
        path = [ pkgs.wpaperd pkgs.zsh ];
        serviceConfig = {
            Type = "oneshot";
            User = "shesh";
        };
    };
}
