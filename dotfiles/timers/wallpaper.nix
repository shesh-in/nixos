{ config, lib, pkgs, home, ... }:
{
    systemd.user.timers = {
        wallpaper-cycle = {
            Unit = {
                Description = "Cycling wallpapers";
            };

            Timer = {
                OnCalendar = "* *-*-* *:00:00 Europe/Moscow"
            };

            Install = {
                WantedBy = "timers.target";
            };
        };
    };

    systemd.user.targets = {
        wallpaper-cycle = {
            Unit = {
                Description = "Cycling wallpapers";

            };
        };
    };
}
