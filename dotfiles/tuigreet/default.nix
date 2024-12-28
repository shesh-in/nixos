{ pkgs, inputs, ... }:
{
    let 
        tuigreet = "${pkgs.greetd.tuigreet}/bin/tuigreet";
        hyprland-session = "${pkgs.hyprland-patched}/share/wayland-sessions";
    in {
        services.greetd = {
            enable = true;
            settings = {
                default_session = {
                    command = "${tuigreet} --time --remember --remember-session --sessions ${hyprland-session}";
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
    };
}
