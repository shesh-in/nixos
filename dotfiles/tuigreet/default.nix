{ pkgs, inputs, ... }: let 
    tuigreet = "${pkgs.greetd.tuigreet}/bin/tuigreet";
    hyprland-session = "${pkgs.hyprland}/share/wayland-sessions";
in {
    services.greetd = {
        enable = true;
        settings = {
            default_session = {
                command = "${tuigreet} -g \"Access restricted.\" --time --remember --remember-session --sessions ${hyprland-session} --cmd Hyprland";
                user = "greeter";
            };
        };
    };

    systemd.services.greetd.serviceConfig = {
        Type = "idle";
        StandardInput = "tty";
        StandardOutput = "tty";
        StandardError = "journal";
        TTYReset = true;
        TTYVHangup = true;
        TTYVDisallocate = true;
    };
}
