{ config, lib, pkgs, ... }:
{
    services.cron = {
        enable = true;
        systemCronJobs = [
            "0 0 * * * /etc/nixos/dotfiles/cron/wallpaper.sh"
            "0 1 * * * /etc/nixos/dotfiles/cron/wallpaper.sh"
            "0 2 * * * /etc/nixos/dotfiles/cron/wallpaper.sh"
            "0 3 * * * /etc/nixos/dotfiles/cron/wallpaper.sh"
            "0 4 * * * /etc/nixos/dotfiles/cron/wallpaper.sh"
            "0 5 * * * /etc/nixos/dotfiles/cron/wallpaper.sh"
            "0 6 * * * /etc/nixos/dotfiles/cron/wallpaper.sh"
            "0 7 * * * /etc/nixos/dotfiles/cron/wallpaper.sh"
            "0 8 * * * /etc/nixos/dotfiles/cron/wallpaper.sh"
            "0 9 * * * /etc/nixos/dotfiles/cron/wallpaper.sh"
            "0 10 * * * /etc/nixos/dotfiles/cron/wallpaper.sh"
            "0 11 * * * /etc/nixos/dotfiles/cron/wallpaper.sh"
            "0 12 * * * /etc/nixos/dotfiles/cron/wallpaper.sh"
            "0 13 * * * /etc/nixos/dotfiles/cron/wallpaper.sh"
            "0 14 * * * /etc/nixos/dotfiles/cron/wallpaper.sh"
            "0 15 * * * /etc/nixos/dotfiles/cron/wallpaper.sh"
            "0 16 * * * /etc/nixos/dotfiles/cron/wallpaper.sh"
            "0 17 * * * /etc/nixos/dotfiles/cron/wallpaper.sh"
            "0 18 * * * /etc/nixos/dotfiles/cron/wallpaper.sh"
            "0 19 * * * /etc/nixos/dotfiles/cron/wallpaper.sh"
            "0 20 * * * /etc/nixos/dotfiles/cron/wallpaper.sh"
            "0 21 * * * /etc/nixos/dotfiles/cron/wallpaper.sh"
            "0 22 * * * /etc/nixos/dotfiles/cron/wallpaper.sh"
            "0 23 * * * /etc/nixos/dotfiles/cron/wallpaper.sh"
        ];
    };
}
