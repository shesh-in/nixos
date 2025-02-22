# INACTIVE
{ config, lib, pkgs, ... }:
{
    services.cron = {
        enable = true;
        systemCronJobs = [
            "0 0 * * * shesh /etc/nixos/dotfiles/cron/wallpaper.sh"
            "0 1 * * * shesh /etc/nixos/dotfiles/cron/wallpaper.sh"
            "0 2 * * * shesh /etc/nixos/dotfiles/cron/wallpaper.sh"
            "0 3 * * * shesh /etc/nixos/dotfiles/cron/wallpaper.sh"
            "0 4 * * * shesh /etc/nixos/dotfiles/cron/wallpaper.sh"
            "0 5 * * * shesh /etc/nixos/dotfiles/cron/wallpaper.sh"
            "0 6 * * * shesh /etc/nixos/dotfiles/cron/wallpaper.sh"
            "0 7 * * * shesh /etc/nixos/dotfiles/cron/wallpaper.sh"
            "0 8 * * * shesh /etc/nixos/dotfiles/cron/wallpaper.sh"
            "0 9 * * * shesh /etc/nixos/dotfiles/cron/wallpaper.sh"
            "0 10 * * * shesh /etc/nixos/dotfiles/cron/wallpaper.sh"
            "0 11 * * * shesh /etc/nixos/dotfiles/cron/wallpaper.sh"
            "0 12 * * * shesh /etc/nixos/dotfiles/cron/wallpaper.sh"
            "0 13 * * * shesh /etc/nixos/dotfiles/cron/wallpaper.sh"
            "0 14 * * * shesh /etc/nixos/dotfiles/cron/wallpaper.sh"
            "0 15 * * * shesh /etc/nixos/dotfiles/cron/wallpaper.sh"
            "0 16 * * * shesh /etc/nixos/dotfiles/cron/wallpaper.sh"
            "0 17 * * * shesh /etc/nixos/dotfiles/cron/wallpaper.sh"
            "0 18 * * * shesh /etc/nixos/dotfiles/cron/wallpaper.sh"
            "0 19 * * * shesh /etc/nixos/dotfiles/cron/wallpaper.sh"
            "0 20 * * * shesh /etc/nixos/dotfiles/cron/wallpaper.sh"
            "0 21 * * * shesh /etc/nixos/dotfiles/cron/wallpaper.sh"
            "0 22 * * * shesh /etc/nixos/dotfiles/cron/wallpaper.sh"
            "0 23 * * * shesh /etc/nixos/dotfiles/cron/wallpaper.sh"
        ];
    };
}
